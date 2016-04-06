module GObject
  class TypePluginClass
    include GObject::WrappedType

    def initialize(@g_object_type_plugin_class)
    end

    def to_unsafe
      @g_object_type_plugin_class.not_nil!
    end

  end
end

