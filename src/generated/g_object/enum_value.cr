module GObject
  class EnumValue
    include GObject::WrappedType

    @g_object_enum_value : LibGObject::EnumValue*?
    def initialize(@g_object_enum_value : LibGObject::EnumValue*)
    end

    def to_unsafe
      @g_object_enum_value.not_nil!
    end

  end
end

