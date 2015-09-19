require "./gesture_single"

module Gtk
  class GestureDrag < GestureSingle
    def initialize @gtk_gesture_drag
    end

    def to_unsafe
      @gtk_gesture_drag.not_nil!
    end

    def self.new_internal(widget)
      __return_value = LibGtk.gesture_drag_new((widget.to_unsafe as LibGtk::Widget*))
      Gtk::Gesture.new(__return_value)
    end

    def offset(x, y)
      __return_value = LibGtk.gesture_drag_get_offset((to_unsafe as LibGtk::GestureDrag*), x && Float64.new(x), y && Float64.new(y))
      __return_value
    end

    def start_point(x, y)
      __return_value = LibGtk.gesture_drag_get_start_point((to_unsafe as LibGtk::GestureDrag*), x && Float64.new(x), y && Float64.new(y))
      __return_value
    end

  end
end

