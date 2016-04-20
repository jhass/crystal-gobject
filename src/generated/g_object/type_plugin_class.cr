module GObject
  class TypePluginClass
    include GObject::WrappedType

    @g_object_type_plugin_class : LibGObject::TypePluginClass*?
    def initialize(@g_object_type_plugin_class : LibGObject::TypePluginClass*)
    end

    def to_unsafe
      @g_object_type_plugin_class.not_nil!
    end

  end
end

