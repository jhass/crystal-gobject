require "./type"

module GObject
  class Value
    def self.new(string : String)
      new(Type::STRING).tap &.string=(string)
    end

    def self.new(type : Type)
      new(LibGObject::Value.new).tap &.init(type)
    end

    def initialize(@g_object_value : LibGObject::Value)
    end

    def init(type : Type)
      LibGObject.value_init self, type.fundamental
    end

    def type
      type = gtype
      Type.values.find {|value| value.fundamental == type }
    end

    def holds_string?
      type == Type::STRING
    end

    # def string=(string : String)
    #   init Type::String
    #   LibGObject.value_set_string self, string
    # end

    def string
      # raise ArgumentError.new "Not a string, is #{type}" unless holds_string?
      value = LibGObject.value_get_string(self)
      String.new value if value
    end

    # def to_s
    #   string.not_nil!
    # end

    def to_unsafe
      pointerof(@g_object_value) as LibGObject::Value*
    end

    def finalize
      unset
    end
  end
end


class String
  def self.from_gvalue(value)
    value.string
  end

  def self.new_gvalue
    GObject::Value.new ""#GObject::Type::STRING
  end

  def to_gvalue
    GObject::Value.new self
  end
end
