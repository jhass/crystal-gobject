module GObject
  class Parameter
    include GObject::WrappedType

    @g_object_parameter : LibGObject::Parameter*?
    def initialize(@g_object_parameter : LibGObject::Parameter*)
    end

    def to_unsafe
      @g_object_parameter.not_nil!
    end

  end
end

