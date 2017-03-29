require "./gesture_drag"

module Gtk
  class GesturePan < GestureDrag
    @gtk_gesture_pan : LibGtk::GesturePan*?
    def initialize(@gtk_gesture_pan : LibGtk::GesturePan*)
    end

    def to_unsafe
      @gtk_gesture_pan.not_nil!
    end


    def self.new(widget, orientation : Gtk::Orientation) : self
      __return_value = LibGtk.gesture_pan_new(widget.to_unsafe.as(LibGtk::Widget*), orientation)
      cast Gtk::Gesture.new(__return_value)
    end

    def orientation
      __return_value = LibGtk.gesture_pan_get_orientation(to_unsafe.as(LibGtk::GesturePan*))
      __return_value
    end

    def orientation=(orientation : Gtk::Orientation)
      __return_value = LibGtk.gesture_pan_set_orientation(to_unsafe.as(LibGtk::GesturePan*), orientation)
      __return_value
    end

    alias PanSignal = GesturePan, Gtk::PanDirection, Float64 ->
    def on_pan(&__block : PanSignal)
      __callback = ->(_arg0 : LibGtk::GesturePan*, _arg1 : LibGtk::LibGtk::PanDirection*, _arg2 : LibGtk::Float64*) {
       __return_value = __block.call(GesturePan.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("pan", __callback)
    end

  end
end

