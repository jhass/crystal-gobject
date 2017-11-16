require "./bin"

module Gst
  class Pipeline < Bin
    @pointer : Void*
    def initialize(pointer : LibGst::Pipeline*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Pipeline*)
    end

    # Implements ChildProxy
    def auto_flush_bus
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "auto_flush_bus", gvalue)
      gvalue.boolean
    end

    def delay
      gvalue = GObject::Value.new(GObject::Type::UINT64)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "delay", gvalue)
      gvalue
    end

    def latency
      gvalue = GObject::Value.new(GObject::Type::UINT64)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "latency", gvalue)
      gvalue
    end

    def self.new(name) : self
      __return_value = LibGst.pipeline_new(name ? name.to_unsafe : nil)
      cast Gst::Element.new(__return_value)
    end

    def auto_clock
      LibGst.pipeline_auto_clock(@pointer.as(LibGst::Pipeline*))
      nil
    end

    def auto_flush_bus
      __return_value = LibGst.pipeline_get_auto_flush_bus(@pointer.as(LibGst::Pipeline*))
      __return_value
    end

    def bus
      __return_value = LibGst.pipeline_get_bus(@pointer.as(LibGst::Pipeline*))
      Gst::Bus.new(__return_value)
    end

    def delay
      __return_value = LibGst.pipeline_get_delay(@pointer.as(LibGst::Pipeline*))
      __return_value
    end

    def latency
      __return_value = LibGst.pipeline_get_latency(@pointer.as(LibGst::Pipeline*))
      __return_value
    end

    def pipeline_clock
      __return_value = LibGst.pipeline_get_pipeline_clock(@pointer.as(LibGst::Pipeline*))
      Gst::Clock.new(__return_value)
    end

    def auto_flush_bus=(auto_flush)
      LibGst.pipeline_set_auto_flush_bus(@pointer.as(LibGst::Pipeline*), auto_flush)
      nil
    end

    def delay=(delay)
      LibGst.pipeline_set_delay(@pointer.as(LibGst::Pipeline*), UInt64.new(delay))
      nil
    end

    def latency=(latency)
      LibGst.pipeline_set_latency(@pointer.as(LibGst::Pipeline*), UInt64.new(latency))
      nil
    end

    def use_clock(clock)
      LibGst.pipeline_use_clock(@pointer.as(LibGst::Pipeline*), clock ? clock.to_unsafe.as(LibGst::Clock*) : nil)
      nil
    end

  end
end

