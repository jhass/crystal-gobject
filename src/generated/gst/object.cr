module Gst
  class Object < GObject::InitiallyUnowned
    def initialize(@gst_object)
    end

    def to_unsafe
      @gst_object.not_nil!
    end



    def self.check_uniqueness(list, name)
      __return_value = LibGst.object_check_uniqueness(list, name)
      __return_value
    end

    def self.default_deep_notify(object, orig, pspec, excluded_props)
      __return_value = LibGst.object_default_deep_notify((object.to_unsafe as LibGObject::Object*), (orig.to_unsafe as LibGst::Object*), (pspec.to_unsafe as LibGObject::ParamSpec*), excluded_props && excluded_props)
      __return_value
    end

    def self.replace(oldobj, newobj)
      __return_value = LibGst.object_replace(oldobj && (oldobj.to_unsafe as LibGst::Object*), newobj && (newobj.to_unsafe as LibGst::Object*))
      __return_value
    end

    def add_control_binding(binding)
      __return_value = LibGst.object_add_control_binding((to_unsafe as LibGst::Object*), (binding.to_unsafe as LibGst::ControlBinding*))
      __return_value
    end

    def default_error(error, debug)
      __return_value = LibGst.object_default_error((to_unsafe as LibGst::Object*), error, debug && debug)
      __return_value
    end

    def control_binding(property_name)
      __return_value = LibGst.object_get_control_binding((to_unsafe as LibGst::Object*), property_name)
      Gst::ControlBinding.new(__return_value) if __return_value
    end

    def control_rate
      __return_value = LibGst.object_get_control_rate((to_unsafe as LibGst::Object*))
      __return_value
    end

    def g_value_array(property_name, timestamp, interval, n_values, values)
      __return_value = LibGst.object_get_g_value_array((to_unsafe as LibGst::Object*), property_name, UInt64.new(timestamp), UInt64.new(interval), UInt32.new(n_values), (values.to_unsafe as LibGObject::Value*))
      __return_value
    end

    def name
      __return_value = LibGst.object_get_name((to_unsafe as LibGst::Object*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value)) if __return_value
    end

    def parent
      __return_value = LibGst.object_get_parent((to_unsafe as LibGst::Object*))
      Gst::Object.new(__return_value) if __return_value
    end

    def path_string
      __return_value = LibGst.object_get_path_string((to_unsafe as LibGst::Object*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def value(property_name, timestamp)
      __return_value = LibGst.object_get_value((to_unsafe as LibGst::Object*), property_name, UInt64.new(timestamp))
      GObject::Value.new(__return_value) if __return_value
    end

    def value_array(property_name, timestamp, interval, n_values, values)
      __return_value = LibGst.object_get_value_array((to_unsafe as LibGst::Object*), property_name, UInt64.new(timestamp), UInt64.new(interval), UInt32.new(n_values), values)
      __return_value
    end

    def has_active_control_bindings
      __return_value = LibGst.object_has_active_control_bindings((to_unsafe as LibGst::Object*))
      __return_value
    end

    def has_ancestor(ancestor)
      __return_value = LibGst.object_has_ancestor((to_unsafe as LibGst::Object*), (ancestor.to_unsafe as LibGst::Object*))
      __return_value
    end

    def has_as_ancestor(ancestor)
      __return_value = LibGst.object_has_as_ancestor((to_unsafe as LibGst::Object*), (ancestor.to_unsafe as LibGst::Object*))
      __return_value
    end

    def has_as_parent(parent)
      __return_value = LibGst.object_has_as_parent((to_unsafe as LibGst::Object*), (parent.to_unsafe as LibGst::Object*))
      __return_value
    end

    def ref
      __return_value = LibGst.object_ref((to_unsafe as LibGst::Object*))
      Gst::Object.new(__return_value)
    end

    def remove_control_binding(binding)
      __return_value = LibGst.object_remove_control_binding((to_unsafe as LibGst::Object*), (binding.to_unsafe as LibGst::ControlBinding*))
      __return_value
    end

    def set_control_binding_disabled(property_name, disabled)
      __return_value = LibGst.object_set_control_binding_disabled((to_unsafe as LibGst::Object*), property_name, disabled)
      __return_value
    end

    def control_bindings_disabled=(disabled)
      __return_value = LibGst.object_set_control_bindings_disabled((to_unsafe as LibGst::Object*), disabled)
      __return_value
    end

    def control_rate=(control_rate)
      __return_value = LibGst.object_set_control_rate((to_unsafe as LibGst::Object*), UInt64.new(control_rate))
      __return_value
    end

    def name=(name)
      __return_value = LibGst.object_set_name((to_unsafe as LibGst::Object*), name && name)
      __return_value
    end

    def parent=(parent)
      __return_value = LibGst.object_set_parent((to_unsafe as LibGst::Object*), (parent.to_unsafe as LibGst::Object*))
      __return_value
    end

    def suggest_next_sync
      __return_value = LibGst.object_suggest_next_sync((to_unsafe as LibGst::Object*))
      __return_value
    end

    def sync_values(timestamp)
      __return_value = LibGst.object_sync_values((to_unsafe as LibGst::Object*), UInt64.new(timestamp))
      __return_value
    end

    def unparent
      __return_value = LibGst.object_unparent((to_unsafe as LibGst::Object*))
      __return_value
    end

    def unref
      __return_value = LibGst.object_unref((to_unsafe as LibGst::Object*))
      __return_value
    end

    alias DeepNotifySignal = Object, Gst::Object, GObject::ParamSpec -> 
    def on_deep_notify(&__block : DeepNotifySignal)
      __callback = ->(_arg0 : LibGst::Object*, _arg1 : LibGst::LibGst::Object*, _arg2 : LibGst::LibGObject::ParamSpec*) {
       __return_value = __block.call(Object.new(_arg0), Gst::Object.new(_arg1), GObject::ParamSpec.new(_arg2))
       __return_value
      }
      connect("deep-notify", __callback)
    end

  end
end

