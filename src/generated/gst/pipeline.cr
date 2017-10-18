require "./bin"

module Gst
  class Pipeline < Bin
    @gst_pipeline : LibGst::Pipeline*?
    def initialize(@gst_pipeline : LibGst::Pipeline*)
    end

    def to_unsafe
      @gst_pipeline.not_nil!
    end

    # Implements ChildProxy
    def auto_flush_bus
      __return_value = LibGst.pipeline_get_auto_flush_bus(to_unsafe.as(LibGst::Pipeline*))
      __return_value
    end

    def delay
      __return_value = LibGst.pipeline_get_delay(to_unsafe.as(LibGst::Pipeline*))
      __return_value
    end

    def latency
      __return_value = LibGst.pipeline_get_latency(to_unsafe.as(LibGst::Pipeline*))
      __return_value
    end

    def self.new(name) : self
      __return_value = LibGst.pipeline_new(name ? name.to_unsafe : nil)
      cast Gst::Element.new(__return_value)
    end

    def auto_clock
      LibGst.pipeline_auto_clock(to_unsafe.as(LibGst::Pipeline*))
      nil
    end

    def auto_flush_bus
      __return_value = LibGst.pipeline_get_auto_flush_bus(to_unsafe.as(LibGst::Pipeline*))
      __return_value
    end

    def bus
      __return_value = LibGst.pipeline_get_bus(to_unsafe.as(LibGst::Pipeline*))
      Gst::Bus.new(__return_value)
    end

    def delay
      __return_value = LibGst.pipeline_get_delay(to_unsafe.as(LibGst::Pipeline*))
      __return_value
    end

    def latency
      __return_value = LibGst.pipeline_get_latency(to_unsafe.as(LibGst::Pipeline*))
      __return_value
    end

    def pipeline_clock
      __return_value = LibGst.pipeline_get_pipeline_clock(to_unsafe.as(LibGst::Pipeline*))
      Gst::Clock.new(__return_value)
    end

    def auto_flush_bus=(auto_flush)
      LibGst.pipeline_set_auto_flush_bus(to_unsafe.as(LibGst::Pipeline*), auto_flush)
      nil
    end

    def delay=(delay)
      LibGst.pipeline_set_delay(to_unsafe.as(LibGst::Pipeline*), UInt64.new(delay))
      nil
    end

    def latency=(latency)
      LibGst.pipeline_set_latency(to_unsafe.as(LibGst::Pipeline*), UInt64.new(latency))
      nil
    end

    def use_clock(clock)
      LibGst.pipeline_use_clock(to_unsafe.as(LibGst::Pipeline*), clock ? clock.to_unsafe.as(LibGst::Clock*) : nil)
      nil
    end

  end
end

