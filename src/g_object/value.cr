require "./type"

module GObject
  class Value
    def self.new(string : String)
      new(Type::STRING).tap &.string=(string)
    end

    def initialize(type : Type)
      @g_object_value = Pointer(LibGObject::Value).malloc
      init(type)
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
    GObject::Value.new GObject::Type::STRING
  end

  def to_gvalue
    GObject::Value.new self
  end
end
