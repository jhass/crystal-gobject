require "./gesture_single"

module Gtk
  class GestureLongPress < GestureSingle
    @pointer : Void*
    def initialize(pointer : LibGtk::GestureLongPress*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::GestureLongPress*)
    end

    def delay_factor
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "delay_factor", gvalue)
      gvalue
    end

    def self.new(widget) : self
      __return_value = LibGtk.gesture_long_press_new(widget.to_unsafe.as(LibGtk::Widget*))
      cast Gtk::Gesture.new(__return_value)
    end

    alias CancelledSignal = GestureLongPress ->
    def on_cancelled(&__block : CancelledSignal)
      __callback = ->(_arg0 : LibGtk::GestureLongPress*) {
       __return_value = __block.call(GestureLongPress.new(_arg0))
       __return_value
      }
      connect("cancelled", __callback)
    end

    alias PressedSignal = GestureLongPress, Float64, Float64 ->
    def on_pressed(&__block : PressedSignal)
      __callback = ->(_arg0 : LibGtk::GestureLongPress*, _arg1 : Float64*, _arg2 : Float64*) {
       __return_value = __block.call(GestureLongPress.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("pressed", __callback)
    end

  end
end

