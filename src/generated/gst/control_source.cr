require "./object"

module Gst
  class ControlSource < Object
    @gst_control_source : LibGst::ControlSource*?
    def initialize(@gst_control_source : LibGst::ControlSource*)
    end

    def to_unsafe
      @gst_control_source.not_nil!
    end

    def control_source_get_value(timestamp, value)
      __return_value = LibGst.control_source_control_source_get_value(to_unsafe.as(LibGst::ControlSource*), UInt64.new(timestamp), value)
      __return_value
    end

    def control_source_get_value_array(timestamp, interval, n_values, values)
      __return_value = LibGst.control_source_control_source_get_value_array(to_unsafe.as(LibGst::ControlSource*), UInt64.new(timestamp), UInt64.new(interval), UInt32.new(n_values), values)
      __return_value
    end

  end
end

