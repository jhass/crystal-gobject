require "./bin"

module Gst
  class Pipeline < Bin
    def initialize(@gst_pipeline)
    end

    def to_unsafe
      @gst_pipeline.not_nil!
    end

    # Implements ChildProxy



    def self.new_internal(name)
      __return_value = LibGst.pipeline_new(name && name)
      Gst::Element.new(__return_value)
    end

    def auto_clock
      __return_value = LibGst.pipeline_auto_clock((to_unsafe as LibGst::Pipeline*))
      __return_value
    end

    def auto_flush_bus
      __return_value = LibGst.pipeline_get_auto_flush_bus((to_unsafe as LibGst::Pipeline*))
      __return_value
    end

    def bus
      __return_value = LibGst.pipeline_get_bus((to_unsafe as LibGst::Pipeline*))
      Gst::Bus.new(__return_value)
    end

    def delay
      __return_value = LibGst.pipeline_get_delay((to_unsafe as LibGst::Pipeline*))
      __return_value
    end

    def latency
      __return_value = LibGst.pipeline_get_latency((to_unsafe as LibGst::Pipeline*))
      __return_value
    end

    def pipeline_clock
      __return_value = LibGst.pipeline_get_pipeline_clock((to_unsafe as LibGst::Pipeline*))
      Gst::Clock.new(__return_value)
    end

    def auto_flush_bus=(auto_flush)
      __return_value = LibGst.pipeline_set_auto_flush_bus((to_unsafe as LibGst::Pipeline*), auto_flush)
      __return_value
    end

    def delay=(delay)
      __return_value = LibGst.pipeline_set_delay((to_unsafe as LibGst::Pipeline*), UInt64.new(delay))
      __return_value
    end

    def latency=(latency)
      __return_value = LibGst.pipeline_set_latency((to_unsafe as LibGst::Pipeline*), UInt64.new(latency))
      __return_value
    end

    def use_clock(clock)
      __return_value = LibGst.pipeline_use_clock((to_unsafe as LibGst::Pipeline*), clock && (clock.to_unsafe as LibGst::Clock*))
      __return_value
    end

  end
end

