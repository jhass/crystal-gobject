module GObject
  class ObjectConstructParam
    include GObject::WrappedType

    @g_object_object_construct_param : LibGObject::ObjectConstructParam*?
    def initialize(@g_object_object_construct_param : LibGObject::ObjectConstructParam*)
    end

    def to_unsafe
      @g_object_object_construct_param.not_nil!
    end

  end
end

