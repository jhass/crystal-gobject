require "./object"

module Gst
  class ControlSource < Object
    @pointer : Void*
    def initialize(pointer : LibGst::ControlSource*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ControlSource*)
    end

    def control_source_get_value(timestamp, value)
      __return_value = LibGst.control_source_control_source_get_value(@pointer.as(LibGst::ControlSource*), UInt64.new(timestamp), value)
      __return_value
    end

    def control_source_get_value_array(timestamp, interval, n_values, values)
      __return_value = LibGst.control_source_control_source_get_value_array(@pointer.as(LibGst::ControlSource*), UInt64.new(timestamp), UInt64.new(interval), UInt32.new(n_values), values)
      __return_value
    end

  end
end

