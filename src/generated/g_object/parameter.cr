module GObject
  class Parameter
    include GObject::WrappedType

    def initialize(@g_object_parameter)
    end

    def to_unsafe
      @g_object_parameter.not_nil!
    end

  end
end

