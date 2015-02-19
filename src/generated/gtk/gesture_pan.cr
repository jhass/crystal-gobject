require "./gesture_drag"

module Gtk
  class GesturePan < GestureDrag
    def initialize @gtk_gesture_pan
    end

    def to_unsafe
      @gtk_gesture_pan.not_nil!
    end

    def orientation=(__value)
      LibGtk.gesture_pan_set_orientation((to_unsafe as LibGtk::GesturePan*), __value)
    end

    def self.new_internal(widget, orientation)
      __return_value = LibGtk.gesture_pan_new((widget.to_unsafe as LibGtk::Widget*), orientation)
      Gtk::Gesture.new(__return_value)
    end

    def orientation
      __return_value = LibGtk.gesture_pan_get_orientation((to_unsafe as LibGtk::GesturePan*))
      __return_value
    end

    def orientation=(orientation)
      __return_value = LibGtk.gesture_pan_set_orientation((to_unsafe as LibGtk::GesturePan*), orientation)
      __return_value
    end

  end
end

