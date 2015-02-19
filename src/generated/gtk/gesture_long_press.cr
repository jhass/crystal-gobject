require "./gesture_single"

module Gtk
  class GestureLongPress < GestureSingle
    def initialize @gtk_gesture_long_press
    end

    def to_unsafe
      @gtk_gesture_long_press.not_nil!
    end

    def self.new_internal(widget)
      __return_value = LibGtk.gesture_long_press_new((widget.to_unsafe as LibGtk::Widget*))
      Gtk::Gesture.new(__return_value)
    end

  end
end

