module GObject
  class Object
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGObject::Object*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::Object*)
    end

    def self.newv(object_type, n_parameters, parameters) : self
      __return_value = LibGObject.object_newv(UInt64.new(object_type), UInt32.new(n_parameters), parameters)
      cast GObject::Object.new(__return_value)
    end

    def self.compat_control(what, data)
      __return_value = LibGObject.object_compat_control(UInt64.new(what), data ? data : nil)
      __return_value
    end

    def self.interface_find_property(g_iface, property_name)
      __return_value = LibGObject.object_interface_find_property(g_iface.to_unsafe.as(LibGObject::TypeInterface*), property_name.to_unsafe)
      GObject::ParamSpec.new(__return_value)
    end

    def self.interface_install_property(g_iface, pspec)
      LibGObject.object_interface_install_property(g_iface.to_unsafe.as(LibGObject::TypeInterface*), pspec.to_unsafe.as(LibGObject::ParamSpec*))
      nil
    end

    def self.interface_list_properties(g_iface, n_properties_p)
      __return_value = LibGObject.object_interface_list_properties(g_iface.to_unsafe.as(LibGObject::TypeInterface*), n_properties_p)
      PointerIterator.new(__return_value) {|__item| GObject::ParamSpec.new(__item) }
    end

    def bind_property(source_property, target, target_property, flags : GObject::BindingFlags)
      __return_value = LibGObject.object_bind_property(@pointer.as(LibGObject::Object*), source_property.to_unsafe, target.to_unsafe.as(LibGObject::Object*), target_property.to_unsafe, flags)
      GObject::Binding.new(__return_value)
    end

    def bind_property_full(source_property, target, target_property, flags : GObject::BindingFlags, transform_to, transform_from)
      __return_value = LibGObject.object_bind_property_full(@pointer.as(LibGObject::Object*), source_property.to_unsafe, target.to_unsafe.as(LibGObject::Object*), target_property.to_unsafe, flags, transform_to.to_unsafe.as(LibGObject::Closure*), transform_from.to_unsafe.as(LibGObject::Closure*))
      GObject::Binding.new(__return_value)
    end

    def force_floating
      LibGObject.object_force_floating(@pointer.as(LibGObject::Object*))
      nil
    end

    def freeze_notify
      LibGObject.object_freeze_notify(@pointer.as(LibGObject::Object*))
      nil
    end

    def data(key)
      LibGObject.object_get_data(@pointer.as(LibGObject::Object*), key.to_unsafe)
      nil
    end

    def property(property_name, value)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), property_name.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def qdata(quark)
      LibGObject.object_get_qdata(@pointer.as(LibGObject::Object*), UInt32.new(quark))
      nil
    end

    def getv(n_properties, names, values)
      LibGObject.object_getv(@pointer.as(LibGObject::Object*), UInt32.new(n_properties), names, values)
      nil
    end

    def floating?
      __return_value = LibGObject.object_is_floating(@pointer.as(LibGObject::Object*))
      __return_value
    end

    def notify(property_name)
      LibGObject.object_notify(@pointer.as(LibGObject::Object*), property_name.to_unsafe)
      nil
    end

    def notify_by_pspec(pspec)
      LibGObject.object_notify_by_pspec(@pointer.as(LibGObject::Object*), pspec.to_unsafe.as(LibGObject::ParamSpec*))
      nil
    end

    def ref
      __return_value = LibGObject.object_ref(@pointer.as(LibGObject::Object*))
      GObject::Object.new(__return_value)
    end

    def ref_sink
      __return_value = LibGObject.object_ref_sink(@pointer.as(LibGObject::Object*))
      GObject::Object.new(__return_value)
    end

    def run_dispose
      LibGObject.object_run_dispose(@pointer.as(LibGObject::Object*))
      nil
    end

    def set_data(key, data)
      LibGObject.object_set_data(@pointer.as(LibGObject::Object*), key.to_unsafe, data ? data : nil)
      nil
    end

    def set_property(property_name, value)
      LibGObject.object_set_property(@pointer.as(LibGObject::Object*), property_name.to_unsafe, value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def steal_data(key)
      LibGObject.object_steal_data(@pointer.as(LibGObject::Object*), key.to_unsafe)
      nil
    end

    def steal_qdata(quark)
      LibGObject.object_steal_qdata(@pointer.as(LibGObject::Object*), UInt32.new(quark))
      nil
    end

    def thaw_notify
      LibGObject.object_thaw_notify(@pointer.as(LibGObject::Object*))
      nil
    end

    def unref
      LibGObject.object_unref(@pointer.as(LibGObject::Object*))
      nil
    end

    def watch_closure(closure)
      LibGObject.object_watch_closure(@pointer.as(LibGObject::Object*), closure.to_unsafe.as(LibGObject::Closure*))
      nil
    end

    alias NotifySignal = Object, GObject::ParamSpec ->
    def on_notify(&__block : NotifySignal)
      __callback = ->(_arg0 : LibGObject::Object*, _arg1 : LibGObject::LibGObject::ParamSpec**) {
       __return_value = __block.call(Object.new(_arg0), GObject::ParamSpec.new(_arg1))
       __return_value
      }
      connect("notify", __callback)
    end

  end
end

