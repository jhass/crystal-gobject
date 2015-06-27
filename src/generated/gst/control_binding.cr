require "./object"

module Gst
  class ControlBinding < Object
    def initialize @gst_control_binding
    end

    def to_unsafe
      @gst_control_binding.not_nil!
    end



    def g_value_array(timestamp, interval, n_values, values)
      __return_value = LibGst.control_binding_get_g_value_array((to_unsafe as LibGst::ControlBinding*), UInt64.cast(timestamp), UInt64.cast(interval), UInt32.cast(n_values), values)
      __return_value
    end

    def value(timestamp)
      __return_value = LibGst.control_binding_get_value((to_unsafe as LibGst::ControlBinding*), UInt64.cast(timestamp))
      GObject::Value.new(__return_value) if __return_value
    end

    def is_disabled
      __return_value = LibGst.control_binding_is_disabled((to_unsafe as LibGst::ControlBinding*))
      __return_value
    end

    def disabled=(disabled)
      __return_value = LibGst.control_binding_set_disabled((to_unsafe as LibGst::ControlBinding*), Bool.cast(disabled))
      __return_value
    end

    def sync_values(object, timestamp, last_sync)
      __return_value = LibGst.control_binding_sync_values((to_unsafe as LibGst::ControlBinding*), (object.to_unsafe as LibGst::Object*), UInt64.cast(timestamp), UInt64.cast(last_sync))
      __return_value
    end

  end
end

