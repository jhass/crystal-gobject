module GObject
  class TypeInfo
    include GObject::WrappedType

    @g_object_type_info : LibGObject::TypeInfo*?
    def initialize(@g_object_type_info : LibGObject::TypeInfo*)
    end

    def to_unsafe
      @g_object_type_info.not_nil!
    end

  end
end

