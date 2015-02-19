require "./gesture_single"

module Gtk
  class GestureMultiPress < GestureSingle
    def initialize @gtk_gesture_multi_press
    end

    def to_unsafe
      @gtk_gesture_multi_press.not_nil!
    end

    def self.new_internal(widget)
      __return_value = LibGtk.gesture_multi_press_new((widget.to_unsafe as LibGtk::Widget*))
      Gtk::Gesture.new(__return_value)
    end

    def area(rect)
      __return_value = LibGtk.gesture_multi_press_get_area((to_unsafe as LibGtk::GestureMultiPress*), rect)
      __return_value
    end

    def area=(rect)
      __return_value = LibGtk.gesture_multi_press_set_area((to_unsafe as LibGtk::GestureMultiPress*), (rect.to_unsafe as LibCairo::RectangleInt*))
      __return_value
    end

  end
end

