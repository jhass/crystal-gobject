require "./gesture"

module Gtk
  class GestureSingle < Gesture
    @gtk_gesture_single : LibGtk::GestureSingle*?
    def initialize(@gtk_gesture_single : LibGtk::GestureSingle*)
    end

    def to_unsafe
      @gtk_gesture_single.not_nil!
    end

    def button
      __return_value = LibGtk.gesture_single_get_button(to_unsafe.as(LibGtk::GestureSingle*))
      __return_value
    end

    def exclusive
      __return_value = LibGtk.gesture_single_get_exclusive(to_unsafe.as(LibGtk::GestureSingle*))
      __return_value
    end

    def touch_only
      __return_value = LibGtk.gesture_single_get_touch_only(to_unsafe.as(LibGtk::GestureSingle*))
      __return_value
    end

    def button
      __return_value = LibGtk.gesture_single_get_button(to_unsafe.as(LibGtk::GestureSingle*))
      __return_value
    end

    def current_button
      __return_value = LibGtk.gesture_single_get_current_button(to_unsafe.as(LibGtk::GestureSingle*))
      __return_value
    end

    def current_sequence
      __return_value = LibGtk.gesture_single_get_current_sequence(to_unsafe.as(LibGtk::GestureSingle*))
      Gdk::EventSequence.new(__return_value) if __return_value
    end

    def exclusive
      __return_value = LibGtk.gesture_single_get_exclusive(to_unsafe.as(LibGtk::GestureSingle*))
      __return_value
    end

    def touch_only
      __return_value = LibGtk.gesture_single_get_touch_only(to_unsafe.as(LibGtk::GestureSingle*))
      __return_value
    end

    def button=(button)
      __return_value = LibGtk.gesture_single_set_button(to_unsafe.as(LibGtk::GestureSingle*), UInt32.new(button))
      __return_value
    end

    def exclusive=(exclusive)
      __return_value = LibGtk.gesture_single_set_exclusive(to_unsafe.as(LibGtk::GestureSingle*), exclusive)
      __return_value
    end

    def touch_only=(touch_only)
      __return_value = LibGtk.gesture_single_set_touch_only(to_unsafe.as(LibGtk::GestureSingle*), touch_only)
      __return_value
    end

  end
end

