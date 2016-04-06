module GObject
  class EnumClass
    include GObject::WrappedType

    def initialize(@g_object_enum_class)
    end

    def to_unsafe
      @g_object_enum_class.not_nil!
    end

  end
end

