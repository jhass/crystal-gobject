module GObject
  class TypeInfo
    include GObject::WrappedType

    def initialize(@g_object_type_info)
    end

    def to_unsafe
      @g_object_type_info.not_nil!
    end

  end
end

