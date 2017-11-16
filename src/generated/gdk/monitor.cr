module Gdk
  class Monitor < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGdk::Monitor*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::Monitor*)
    end

    def display
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "display", gvalue)
      Gdk::Display.cast(gvalue.object)
    end

    def geometry
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "geometry", gvalue)
      Gdk::Rectangle.cast(gvalue.object)
    end

    def height_mm
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "height_mm", gvalue)
      gvalue
    end

    def manufacturer
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "manufacturer", gvalue)
      gvalue.string
    end

    def model
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "model", gvalue)
      gvalue.string
    end

    def refresh_rate
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "refresh_rate", gvalue)
      gvalue
    end

    def scale_factor
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "scale_factor", gvalue)
      gvalue
    end

    def subpixel_layout
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "subpixel_layout", gvalue)
      gvalue.enum
    end

    def width_mm
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "width_mm", gvalue)
      gvalue
    end

    def workarea
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "workarea", gvalue)
      Gdk::Rectangle.cast(gvalue.object)
    end

    def display
      __return_value = LibGdk.monitor_get_display(@pointer.as(LibGdk::Monitor*))
      Gdk::Display.new(__return_value)
    end

    def geometry(geometry)
      LibGdk.monitor_get_geometry(@pointer.as(LibGdk::Monitor*), geometry)
      nil
    end

    def height_mm
      __return_value = LibGdk.monitor_get_height_mm(@pointer.as(LibGdk::Monitor*))
      __return_value
    end

    def manufacturer
      __return_value = LibGdk.monitor_get_manufacturer(@pointer.as(LibGdk::Monitor*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def model
      __return_value = LibGdk.monitor_get_model(@pointer.as(LibGdk::Monitor*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def refresh_rate
      __return_value = LibGdk.monitor_get_refresh_rate(@pointer.as(LibGdk::Monitor*))
      __return_value
    end

    def scale_factor
      __return_value = LibGdk.monitor_get_scale_factor(@pointer.as(LibGdk::Monitor*))
      __return_value
    end

    def subpixel_layout
      __return_value = LibGdk.monitor_get_subpixel_layout(@pointer.as(LibGdk::Monitor*))
      __return_value
    end

    def width_mm
      __return_value = LibGdk.monitor_get_width_mm(@pointer.as(LibGdk::Monitor*))
      __return_value
    end

    def workarea(workarea)
      LibGdk.monitor_get_workarea(@pointer.as(LibGdk::Monitor*), workarea)
      nil
    end

    def primary?
      __return_value = LibGdk.monitor_is_primary(@pointer.as(LibGdk::Monitor*))
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

