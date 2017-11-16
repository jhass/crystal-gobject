require "./gesture"

module Gtk
  class GestureRotate < Gesture
    @pointer : Void*
    def initialize(pointer : LibGtk::GestureRotate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::GestureRotate*)
    end

    def self.new(widget) : self
      __return_value = LibGtk.gesture_rotate_new(widget.to_unsafe.as(LibGtk::Widget*))
      cast Gtk::Gesture.new(__return_value)
    end

    def angle_delta
      __return_value = LibGtk.gesture_rotate_get_angle_delta(@pointer.as(LibGtk::GestureRotate*))
      __return_value
    end

    alias AngleChangedSignal = GestureRotate, Float64, Float64 ->
    def on_angle_changed(&__block : AngleChangedSignal)
      __callback = ->(_arg0 : LibGtk::GestureRotate*, _arg1 : LibGtk::Float64*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(GestureRotate.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("angle-changed", __callback)
    end

  end
end

