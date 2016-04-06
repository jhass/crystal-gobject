require "./gesture"

module Gtk
  class GestureZoom < Gesture
    def initialize(@gtk_gesture_zoom)
    end

    def to_unsafe
      @gtk_gesture_zoom.not_nil!
    end

    def self.new_internal(widget)
      __return_value = LibGtk.gesture_zoom_new((widget.to_unsafe as LibGtk::Widget*))
      Gtk::Gesture.new(__return_value)
    end

    def scale_delta
      __return_value = LibGtk.gesture_zoom_get_scale_delta((to_unsafe as LibGtk::GestureZoom*))
      __return_value
    end

    alias ScaleChangedSignal = GestureZoom, Float64 -> 
    def on_scale_changed(&__block : ScaleChangedSignal)
      __callback = ->(_arg0 : LibGtk::GestureZoom*, _arg1 : LibGtk::Float64*) {
       __return_value = __block.call(GestureZoom.new(_arg0), _arg1)
       __return_value
      }
      connect("scale-changed", __callback)
    end

  end
end

