module GObject
  class EnumValue
    include GObject::WrappedType

    def initialize(@g_object_enum_value)
    end

    def to_unsafe
      @g_object_enum_value.not_nil!
    end

  end
end

