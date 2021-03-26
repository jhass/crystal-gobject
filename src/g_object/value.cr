require "./type"

module GObject
  class Value
    def self.new(value)
      case value
      when Int8
        new(type: Type::CHAR).tap &.char=(value)
      when UInt8
        new(type: Type::UCHAR).tap &.uchar=(value)
      when Bool
        new(type: Type::BOOLEAN).tap &.boolean=(value)
      when Int32
        new(type: Type::INT).tap &.int=(value)
      when UInt32
        new(type: Type::UINT).tap &.uint=(value)
      when Int64
        new(type: Type::INT64).tap &.int64=(value)
      when UInt64
        new(type: Type::UINT64).tap &.uint64=(value)
      when Float32
        new(type: Type::FLOAT).tap &.float=(value)
      when Float64
        new(type: Type::DOUBLE).tap &.double=(value)
      when Type
        new(type: Type.gtype).tap &.gtype=(value.value)
      when Enum # TODO figure out and set actual gtype?
        if value.class.flags?
          new(type: Type::FLAGS).tap &.flags=(value.value)
        else
          new(type: Type::ENUM).tap &.enum=(value.value)
        end
      when String
        new(type: Type::UTF8).tap &.string=(value)
      when GObject::Object
        new(type: value.gtype).tap &.object=(value)
      when Pointer
        new(type: Type::POINTER).tap &.pointer=(value.as(Void*))
      else
        raise ArgumentError.new("Unable to wrap a #{value.class} into a GValue")
      end
    end

    def initialize(*, type : Type | UInt64)
      @pointer = Pointer(LibGObject::Value).malloc.as(Void*)
      init(type)
    end

    def init(type : Type)
      init(type.value)
    end

    def init(type : UInt64)
      LibGObject.value_init self, type
    end

    def gtype
      Type.new(previous_def)
    end

    def type
      Type.new(g_type)
    end

    def raw
      raw_for_type(type)
    end

    private def raw_for_type(type)
      {% begin %}
            case type
        {% for type in %w(char uchar boolean int uint long ulong int64 uint64 float double pointer enum flags object gtype) %}
          when .{{type.id}}?
            self.{{type.id}}
        {% end %}
        when .utf8?
          string
        else
          if type.fundamental?
            raise ArgumentError.new("Cannot obtain raw value for #{inspect}")
          else
            raw_for_type(type.fundamental)
          end
      end
      {% end %}
    end

    {% for name, type in {
                           "i8"      => Int8,
                           "u8"      => UInt8,
                           "i32"     => Int32,
                           "i"       => Int32,
                           "u32"     => UInt32,
                           "u"       => UInt32,
                           "i64"     => Int64,
                           "u64"     => UInt64,
                           "f32"     => Float32,
                           "f"       => Float32,
                           "f64"     => Float64,
                           "bool"    => Bool,
                           "s"       => String,
                           "pointer" => Pointer(Void),
                           "gtype"   => GObject::Type,
                           "gobject" => GObject::Object,
                         } %}

      def as_{{name.id}} : {{type}}
        raw.as({{type}})
      end

      def as_{{name.id}}?  : {{type}}?
        raw.as?({{type}})
      rescue ArgumentError
        nil
      end

    {% end %}

    def to_s(io)
      inspect(io)
    end

    def inspect(io)
      io << "GObject::Value("
      inspect_as(type, io)
      io << ")"
    end

    private def inspect_as(type, io)
      {% begin %}
        case type
        when .invalid?, .none?, .boxed?, .param?, .interface?, .variant?
          io << "type=#{g_type} struct="
          to_unsafe.as(LibGObject::Value*).value.inspect(io)
        {% for type in %w(char uchar boolean int uint long ulong int64 uint64 float double pointer enum flags object gtype) %}
          when .{{type.id}}?
            io << "{{type.id}}="
            self.{{type.id}}.inspect(io)
        {% end %}
        when .utf8?
          io << "string="
          string.inspect(io)
        else
          if type.fundamental?
            # Well, this shouldn't happen
            io << "type=#{g_type} struct="
            to_unsafe.as(LibGObject::Value*).value.inspect(io)
          else
            inspect_as(type.fundamental, io)
          end
        end
      {% end %}
    end

    def finalize
      unset
    end
  end
end

class Object
  def to_gvalue
    GObject::Value.new self
  end
end

struct Int8
  def self.from_gvalue(value : GObject::Value)
    raise ArgumentError.new("GValue does not contain a Int8 (GObject::Type::CHAR)") unless value.type.char?
    value.char
  end
end

struct UInt8
  def self.from_gvalue(value : GObject::Value)
    raise ArgumentError.new("GValue does not contain a UInt8 (GObject::Type::UCHAR)") unless value.type.uchar?
    value.uchar
  end
end

struct Bool
  def self.from_gvalue(value : GObject::Value)
    raise ArgumentError.new("GValue does not contain a Bool (GObject::Type::BOOLEAN)") unless value.type.boolean?
    value.boolean
  end
end

struct Int32
  def self.from_gvalue(value : GObject::Value)
    raise ArgumentError.new("GValue does not contain a Int32 (GObject::Type::INT)") unless value.type.int?
    value.int
  end
end

struct UInt32
  def self.from_gvalue(value : GObject::Value)
    raise ArgumentError.new("GValue does not contain a UInt32 (GObject::Type::UINT)") unless value.type.uint?
    value.uint
  end
end

struct Int64
  def self.from_gvalue(value : GObject::Value)
    case value.type
    when .long?
      value.long
    when .int64?
      value.int64
    else
      raise ArgumentError.new("GValue does not contain a Int64 (GObject::Type::LONG or GObject::Type::INT64)")
    end
  end
end

struct UInt64
  def self.from_gvalue(value : GObject::Value)
    case value.type
    when .ulong?
      value.ulong
    when .uint64?
      value.uint64
    else
      raise ArgumentError.new("GValue does not contain a UInt64 (GObject::Type::ULONG or GObject::Type::UINT64)")
    end
  end
end

struct Float32
  def self.from_gvalue(value : GObject::Value)
    raise ArgumentError.new("GValue does not contain a Float32 (GObject::Type::FLOAT)") unless value.type.float?
    value.float
  end
end

struct Float64
  def self.from_gvalue(value : GObject::Value)
    raise ArgumentError.new("GValue does not contain a Float64 (GObject::Type::DOUBLE)") unless value.type.double?
    value.double
  end
end

class String
  def self.from_gvalue(value : GObject::Value)
    raise ArgumentError.new("GValue does not contain a String (GObject::Type::UTF8)") unless value.type.utf8?
    value.string
  end
end

struct Pointer(T)
  def self.from_gvalue(value : GObject::Value)
    raise ArgumentError.new("GValue does not contain a Pointer (GObject::Type::POINTER)") unless value.type.pointer?
    value.pointer.as(T*)
  end
end

struct Enum
  def self.flags?
    {{@type.annotation(Flags) != nil}}
  end

  def self.from_gvalue(value : GObject::Value)
    {% if @type.annotation(FLAGS) != nil %}
      raise ArgumentError.new("GValue does not contain a flags enum (GObject::Type::FLAGS)") unless value.type.flags?
      new(value.flags)
    {% else %}
      raise ArgumentError.new("GValue does not contain a enum (GObject::Type::ENUM)") unless value.type.enum?
      new(value.enum)
    {% end %}
  end
end

class GObject::Object
  def self.from_gvalue(value : GObject::Value)
    raise ArgumentError.new("GValue does not contain a GObject::Object (GObject::Type::OBJECT)") unless value.type.fundamental.char?
    value.object
  end
end

enum GObject::Type
  def self.from_gvalue(value : GObject::Value)
    raise ArgumentError.new("GValue does not contain a GObject::Type (GObject::Type.gtype)") unless value.type.gtype?
    value.gtype
  end
end
