require "./gesture_single"

module Gtk
  class GestureSwipe < GestureSingle
    def initialize @gtk_gesture_swipe
    end

    def to_unsafe
      @gtk_gesture_swipe.not_nil!
    end

    def self.new_internal(widget)
      __return_value = LibGtk.gesture_swipe_new((widget.to_unsafe as LibGtk::Widget*))
      Gtk::Gesture.new(__return_value)
    end

    def velocity(velocity_x, velocity_y)
      __return_value = LibGtk.gesture_swipe_get_velocity((to_unsafe as LibGtk::GestureSwipe*), Float64.cast(velocity_x), Float64.cast(velocity_y))
      __return_value
    end

  end
end

