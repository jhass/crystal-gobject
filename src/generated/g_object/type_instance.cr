module GObject
  class TypeInstance
    include GObject::WrappedType

    def initialize(@g_object_type_instance)
    end

    def to_unsafe
      @g_object_type_instance.not_nil!
    end

  end
end

