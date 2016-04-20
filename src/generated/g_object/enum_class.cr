module GObject
  class EnumClass
    include GObject::WrappedType

    @g_object_enum_class : LibGObject::EnumClass*?
    def initialize(@g_object_enum_class : LibGObject::EnumClass*)
    end

    def to_unsafe
      @g_object_enum_class.not_nil!
    end

  end
end

