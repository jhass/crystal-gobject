require "./gesture"

module Gtk
  class GestureRotate < Gesture
    def initialize @gtk_gesture_rotate
    end

    def to_unsafe
      @gtk_gesture_rotate.not_nil!
    end

    def self.new_internal(widget)
      __return_value = LibGtk.gesture_rotate_new((widget.to_unsafe as LibGtk::Widget*))
      Gtk::Gesture.new(__return_value)
    end

    def angle_delta
      __return_value = LibGtk.gesture_rotate_get_angle_delta((to_unsafe as LibGtk::GestureRotate*))
      __return_value
    end

  end
end

