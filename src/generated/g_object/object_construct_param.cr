module GObject
  class ObjectConstructParam
    include GObject::WrappedType

    def initialize(@g_object_object_construct_param)
    end

    def to_unsafe
      @g_object_object_construct_param.not_nil!
    end

  end
end

