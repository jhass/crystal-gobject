module Gdk
  class Monitor < GObject::Object
    @gdk_monitor : LibGdk::Monitor*?
    def initialize(@gdk_monitor : LibGdk::Monitor*)
    end

    def to_unsafe
      @gdk_monitor.not_nil!
    end











    def display
      __return_value = LibGdk.monitor_get_display(to_unsafe.as(LibGdk::Monitor*))
      Gdk::Display.new(__return_value)
    end

    def geometry(geometry)
      __return_value = LibGdk.monitor_get_geometry(to_unsafe.as(LibGdk::Monitor*), geometry)
      __return_value
    end

    def height_mm
      __return_value = LibGdk.monitor_get_height_mm(to_unsafe.as(LibGdk::Monitor*))
      __return_value
    end

    def manufacturer
      __return_value = LibGdk.monitor_get_manufacturer(to_unsafe.as(LibGdk::Monitor*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def model
      __return_value = LibGdk.monitor_get_model(to_unsafe.as(LibGdk::Monitor*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def refresh_rate
      __return_value = LibGdk.monitor_get_refresh_rate(to_unsafe.as(LibGdk::Monitor*))
      __return_value
    end

    def scale_factor
      __return_value = LibGdk.monitor_get_scale_factor(to_unsafe.as(LibGdk::Monitor*))
      __return_value
    end

    def subpixel_layout
      __return_value = LibGdk.monitor_get_subpixel_layout(to_unsafe.as(LibGdk::Monitor*))
      __return_value
    end

    def width_mm
      __return_value = LibGdk.monitor_get_width_mm(to_unsafe.as(LibGdk::Monitor*))
      __return_value
    end

    def workarea(workarea)
      __return_value = LibGdk.monitor_get_workarea(to_unsafe.as(LibGdk::Monitor*), workarea)
      __return_value
    end

    def primary?
      __return_value = LibGdk.monitor_is_primary(to_unsafe.as(LibGdk::Monitor*))
      __return_value
    end

    alias InvalidateSignal = Monitor ->
    def on_invalidate(&__block : InvalidateSignal)
      __callback = ->(_arg0 : LibGdk::Monitor*) {
       __return_value = __block.call(Monitor.new(_arg0))
       __return_value
      }
      connect("invalidate", __callback)
    end

  end
end

