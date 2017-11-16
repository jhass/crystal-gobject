require "./object"

module Gst
  class ControlBinding < Object
    @pointer : Void*
    def initialize(pointer : LibGst::ControlBinding*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ControlBinding*)
    end

    def name
      __return_value = LibGst.control_binding_get_name(to_unsafe.as(LibGst::ControlBinding*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def object
      __return_value = LibGst.control_binding_get_object(to_unsafe.as(LibGst::ControlBinding*))
      Gst::Object.new(__return_value)
    end

    def g_value_array(timestamp, interval, n_values, values)
      __return_value = LibGst.control_binding_get_g_value_array(@pointer.as(LibGst::ControlBinding*), UInt64.new(timestamp), UInt64.new(interval), UInt32.new(n_values), values)
      __return_value
    end

    def value(timestamp)
      __return_value = LibGst.control_binding_get_value(@pointer.as(LibGst::ControlBinding*), UInt64.new(timestamp))
      GObject::Value.new(__return_value) if __return_value
    end

    def disabled?
      __return_value = LibGst.control_binding_is_disabled(@pointer.as(LibGst::ControlBinding*))
      __return_value
    end

    def disabled=(disabled)
      LibGst.control_binding_set_disabled(@pointer.as(LibGst::ControlBinding*), disabled)
      nil
    end

    def sync_values(object, timestamp, last_sync)
      __return_value = LibGst.control_binding_sync_values(@pointer.as(LibGst::ControlBinding*), object.to_unsafe.as(LibGst::Object*), UInt64.new(timestamp), UInt64.new(last_sync))
      __return_value
    end

  end
end

