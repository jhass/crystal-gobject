module GObject
  class Object
    include GObject::WrappedType

    @g_object_object : LibGObject::Object*?
    def initialize(@g_object_object : LibGObject::Object*)
    end

    def to_unsafe
      @g_object_object.not_nil!.as(Void*)
    end

    def self.new(object_type, n_parameters, parameters) : self
      __return_value = LibGObject.object_new(UInt64.new(object_type), UInt32.new(n_parameters), parameters)
      cast GObject::Object.new(__return_value)
    end

    def self.compat_control(what, data)
      __return_value = LibGObject.object_compat_control(UInt64.new(what), data && data)
      __return_value
    end

    def self.interface_find_property(g_iface, property_name)
      __return_value = LibGObject.object_interface_find_property(g_iface.to_unsafe.as(LibGObject::TypeInterface*), property_name.to_unsafe)
      GObject::ParamSpec.new(__return_value)
    end

    def self.interface_install_property(g_iface, pspec)
      __return_value = LibGObject.object_interface_install_property(g_iface.to_unsafe.as(LibGObject::TypeInterface*), pspec.to_unsafe.as(LibGObject::ParamSpec*))
      __return_value
    end

    def self.interface_list_properties(g_iface, n_properties_p)
      __return_value = LibGObject.object_interface_list_properties(g_iface.to_unsafe.as(LibGObject::TypeInterface*), n_properties_p)
      PointerIterator.new(__return_value) {|__item| GObject::ParamSpec.new(__item) }
    end

    def bind_property(source_property, target, target_property, flags)
      __return_value = LibGObject.object_bind_property(to_unsafe.as(LibGObject::Object*), source_property.to_unsafe, target.to_unsafe.as(LibGObject::Object*), target_property.to_unsafe, flags)
      GObject::Binding.new(__return_value)
    end

    def bind_property_full(source_property, target, target_property, flags, transform_to, transform_from)
      __return_value = LibGObject.object_bind_property_full(to_unsafe.as(LibGObject::Object*), source_property.to_unsafe, target.to_unsafe.as(LibGObject::Object*), target_property.to_unsafe, flags, transform_to.to_unsafe.as(LibGObject::Closure*), transform_from.to_unsafe.as(LibGObject::Closure*))
      GObject::Binding.new(__return_value)
    end

    def force_floating
      __return_value = LibGObject.object_force_floating(to_unsafe.as(LibGObject::Object*))
      __return_value
    end

    def freeze_notify
      __return_value = LibGObject.object_freeze_notify(to_unsafe.as(LibGObject::Object*))
      __return_value
    end

    def data(key)
      __return_value = LibGObject.object_get_data(to_unsafe.as(LibGObject::Object*), key.to_unsafe)
      __return_value if __return_value
    end

    def property(property_name, value)
      __return_value = LibGObject.object_get_property(to_unsafe.as(LibGObject::Object*), property_name.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def qdata(quark)
      __return_value = LibGObject.object_get_qdata(to_unsafe.as(LibGObject::Object*), UInt32.new(quark))
      __return_value if __return_value
    end

    def floating?
      __return_value = LibGObject.object_is_floating(to_unsafe.as(LibGObject::Object*))
      __return_value
    end

    def notify(property_name)
      __return_value = LibGObject.object_notify(to_unsafe.as(LibGObject::Object*), property_name.to_unsafe)
      __return_value
    end

    def notify_by_pspec(pspec)
      __return_value = LibGObject.object_notify_by_pspec(to_unsafe.as(LibGObject::Object*), pspec.to_unsafe.as(LibGObject::ParamSpec*))
      __return_value
    end

    def ref
      __return_value = LibGObject.object_ref(to_unsafe.as(LibGObject::Object*))
      GObject::Object.new(__return_value)
    end

    def ref_sink
      __return_value = LibGObject.object_ref_sink(to_unsafe.as(LibGObject::Object*))
      GObject::Object.new(__return_value)
    end

    def replace_data(key, oldval, newval, destroy : LibGLib::DestroyNotify?, old_destroy : LibGLib::DestroyNotify*?)
      __return_value = LibGObject.object_replace_data(to_unsafe.as(LibGObject::Object*), key.to_unsafe, oldval && oldval, newval && newval, destroy && destroy, old_destroy && old_destroy.to_unsafe.as(LibGLib::DestroyNotify*))
      __return_value
    end

    def replace_qdata(quark, oldval, newval, destroy : LibGLib::DestroyNotify?, old_destroy : LibGLib::DestroyNotify*?)
      __return_value = LibGObject.object_replace_qdata(to_unsafe.as(LibGObject::Object*), UInt32.new(quark), oldval && oldval, newval && newval, destroy && destroy, old_destroy && old_destroy.to_unsafe.as(LibGLib::DestroyNotify*))
      __return_value
    end

    def run_dispose
      __return_value = LibGObject.object_run_dispose(to_unsafe.as(LibGObject::Object*))
      __return_value
    end

    def set_data(key, data)
      __return_value = LibGObject.object_set_data(to_unsafe.as(LibGObject::Object*), key.to_unsafe, data && data)
      __return_value
    end

    def set_property(property_name, value)
      __return_value = LibGObject.object_set_property(to_unsafe.as(LibGObject::Object*), property_name.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def steal_data(key)
      __return_value = LibGObject.object_steal_data(to_unsafe.as(LibGObject::Object*), key.to_unsafe)
      __return_value if __return_value
    end

    def steal_qdata(quark)
      __return_value = LibGObject.object_steal_qdata(to_unsafe.as(LibGObject::Object*), UInt32.new(quark))
      __return_value if __return_value
    end

    def thaw_notify
      __return_value = LibGObject.object_thaw_notify(to_unsafe.as(LibGObject::Object*))
      __return_value
    end

    def unref
      __return_value = LibGObject.object_unref(to_unsafe.as(LibGObject::Object*))
      __return_value
    end

    def watch_closure(closure)
      __return_value = LibGObject.object_watch_closure(to_unsafe.as(LibGObject::Object*), closure.to_unsafe.as(LibGObject::Closure*))
      __return_value
    end

    alias NotifySignal = Object, GObject::ParamSpec ->
    def on_notify(&__block : NotifySignal)
      __callback = ->(_arg0 : LibGObject::Object*, _arg1 : LibGObject::LibGObject::ParamSpec*) {
       __return_value = __block.call(Object.new(_arg0), GObject::ParamSpec.new(_arg1))
       __return_value
      }
      connect("notify", __callback)
    end

  end
end

