module Gst
  class Object < GObject::InitiallyUnowned
    @pointer : Void*
    def initialize(pointer : LibGst::Object*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Object*)
    end

    def name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "name", gvalue)
      gvalue.string
    end

    def parent
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "parent", gvalue)
      Gst::Object.cast(gvalue.object)
    end

    def self.check_uniqueness(list, name)
      __return_value = LibGst.object_check_uniqueness(list, name.to_unsafe)
      __return_value
    end

    def self.default_deep_notify(object, orig, pspec, excluded_props)
      LibGst.object_default_deep_notify(object.to_unsafe.as(LibGObject::Object*), orig.to_unsafe.as(LibGst::Object*), pspec.to_unsafe.as(LibGObject::ParamSpec*), excluded_props ? excluded_props : nil)
      nil
    end

    def self.replace(oldobj, newobj)
      __return_value = LibGst.object_replace(oldobj, newobj ? newobj.to_unsafe.as(LibGst::Object*) : nil)
      __return_value
    end

    def add_control_binding(binding)
      __return_value = LibGst.object_add_control_binding(@pointer.as(LibGst::Object*), binding.to_unsafe.as(LibGst::ControlBinding*))
      __return_value
    end

    def default_error(error, debug)
      LibGst.object_default_error(@pointer.as(LibGst::Object*), error, debug ? debug.to_unsafe : nil)
      nil
    end

    def control_binding(property_name)
      __return_value = LibGst.object_get_control_binding(@pointer.as(LibGst::Object*), property_name.to_unsafe)
      Gst::ControlBinding.new(__return_value) if __return_value
    end

    def control_rate
      __return_value = LibGst.object_get_control_rate(@pointer.as(LibGst::Object*))
      __return_value
    end

    def g_value_array(property_name, timestamp, interval, n_values, values)
      __return_value = LibGst.object_get_g_value_array(@pointer.as(LibGst::Object*), property_name.to_unsafe, UInt64.new(timestamp), UInt64.new(interval), UInt32.new(n_values), values)
      __return_value
    end

    def name
      __return_value = LibGst.object_get_name(@pointer.as(LibGst::Object*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def parent
      __return_value = LibGst.object_get_parent(@pointer.as(LibGst::Object*))
      Gst::Object.new(__return_value) if __return_value
    end

    def path_string
      __return_value = LibGst.object_get_path_string(@pointer.as(LibGst::Object*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def value(property_name, timestamp)
      __return_value = LibGst.object_get_value(@pointer.as(LibGst::Object*), property_name.to_unsafe, UInt64.new(timestamp))
      GObject::Value.new(__return_value) if __return_value
    end

    def has_active_control_bindings
      __return_value = LibGst.object_has_active_control_bindings(@pointer.as(LibGst::Object*))
      __return_value
    end

    def has_ancestor(ancestor)
      __return_value = LibGst.object_has_ancestor(@pointer.as(LibGst::Object*), ancestor.to_unsafe.as(LibGst::Object*))
      __return_value
    end

    def has_as_ancestor(ancestor)
      __return_value = LibGst.object_has_as_ancestor(@pointer.as(LibGst::Object*), ancestor.to_unsafe.as(LibGst::Object*))
      __return_value
    end

    def has_as_parent(parent)
      __return_value = LibGst.object_has_as_parent(@pointer.as(LibGst::Object*), parent.to_unsafe.as(LibGst::Object*))
      __return_value
    end

    def ref
      __return_value = LibGst.object_ref(@pointer.as(LibGst::Object*))
      Gst::Object.new(__return_value)
    end

    def remove_control_binding(binding)
      __return_value = LibGst.object_remove_control_binding(@pointer.as(LibGst::Object*), binding.to_unsafe.as(LibGst::ControlBinding*))
      __return_value
    end

    def set_control_binding_disabled(property_name, disabled)
      LibGst.object_set_control_binding_disabled(@pointer.as(LibGst::Object*), property_name.to_unsafe, disabled)
      nil
    end

    def control_bindings_disabled=(disabled)
      LibGst.object_set_control_bindings_disabled(@pointer.as(LibGst::Object*), disabled)
      nil
    end

    def control_rate=(control_rate)
      LibGst.object_set_control_rate(@pointer.as(LibGst::Object*), UInt64.new(control_rate))
      nil
    end

    def name=(name)
      __return_value = LibGst.object_set_name(@pointer.as(LibGst::Object*), name ? name.to_unsafe : nil)
      __return_value
    end

    def parent=(parent)
      __return_value = LibGst.object_set_parent(@pointer.as(LibGst::Object*), parent.to_unsafe.as(LibGst::Object*))
      __return_value
    end

    def suggest_next_sync
      __return_value = LibGst.object_suggest_next_sync(@pointer.as(LibGst::Object*))
      __return_value
    end

    def sync_values(timestamp)
      __return_value = LibGst.object_sync_values(@pointer.as(LibGst::Object*), UInt64.new(timestamp))
      __return_value
    end

    def unparent
      LibGst.object_unparent(@pointer.as(LibGst::Object*))
      nil
    end

    def unref
      LibGst.object_unref(@pointer.as(LibGst::Object*))
      nil
    end

    alias DeepNotifySignal = Object, Gst::Object, GObject::ParamSpec ->
    def on_deep_notify(&__block : DeepNotifySignal)
      __callback = ->(_arg0 : LibGst::Object*, _arg1 : LibGst::Object**, _arg2 : LibGObject::ParamSpec**) {
       __return_value = __block.call(Object.new(_arg0), Gst::Object.new(_arg1), GObject::ParamSpec.new(_arg2))
       __return_value
      }
      connect("deep-notify", __callback)
    end

  end
end

