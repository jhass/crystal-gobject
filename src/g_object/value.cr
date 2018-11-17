require "./type"

module GObject
  class Value
    def self.new(string : String)
      new(Type::UTF8).tap &.string=(string)
    end

    def initialize(type : Type)
      @pointer = Pointer(LibGObject::Value).malloc.as(Void*)
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
      type == Type::UTF8
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
    GObject::Value.new GObject::Type::UTF8
  end

  def to_gvalue
    GObject::Value.new self
  end
end
