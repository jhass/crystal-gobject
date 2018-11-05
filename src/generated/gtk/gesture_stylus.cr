require "./gesture_single"

module Gtk
  class GestureStylus < GestureSingle
    @pointer : Void*
    def initialize(pointer : LibGtk::GestureStylus*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::GestureStylus*)
    end

    def self.new(widget) : self
      __return_value = LibGtk.gesture_stylus_new(widget.to_unsafe.as(LibGtk::Widget*))
      cast Gtk::Gesture.new(__return_value)
    end

    def axes(axes, values)
      __return_value = LibGtk.gesture_stylus_get_axes(@pointer.as(LibGtk::GestureStylus*), axes, values)
      __return_value
    end

    def axis(axis : Gdk::AxisUse, value)
      __return_value = LibGtk.gesture_stylus_get_axis(@pointer.as(LibGtk::GestureStylus*), axis, value)
      __return_value
    end

    def device_tool
      __return_value = LibGtk.gesture_stylus_get_device_tool(@pointer.as(LibGtk::GestureStylus*))
      Gdk::DeviceTool.new(__return_value) if __return_value
    end

    alias DownSignal = GestureStylus, Float64, Float64 ->
    def on_down(&__block : DownSignal)
      __callback = ->(_arg0 : LibGtk::GestureStylus*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(GestureStylus.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("down", __callback)
    end

    alias MotionSignal = GestureStylus, Float64, Float64 ->
    def on_motion(&__block : MotionSignal)
      __callback = ->(_arg0 : LibGtk::GestureStylus*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(GestureStylus.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("motion", __callback)
    end

    alias ProximitySignal = GestureStylus, Float64, Float64 ->
    def on_proximity(&__block : ProximitySignal)
      __callback = ->(_arg0 : LibGtk::GestureStylus*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(GestureStylus.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("proximity", __callback)
    end

    alias UpSignal = GestureStylus, Float64, Float64 ->
    def on_up(&__block : UpSignal)
      __callback = ->(_arg0 : LibGtk::GestureStylus*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(GestureStylus.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("up", __callback)
    end

  end
end

