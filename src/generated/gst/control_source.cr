require "./object"

module Gst
  class ControlSource < Object
    def initialize @gst_control_source
    end

    def to_unsafe
      @gst_control_source.not_nil!
    end

    def value(timestamp, value)
      __return_value = LibGst.control_source_get_value((to_unsafe as LibGst::ControlSource*), UInt64.cast(timestamp), value)
      __return_value
    end

    def value_array(timestamp, interval, n_values, values)
      __return_value = LibGst.control_source_get_value_array((to_unsafe as LibGst::ControlSource*), UInt64.cast(timestamp), UInt64.cast(interval), UInt32.cast(n_values), values)
      __return_value
    end

  end
end

