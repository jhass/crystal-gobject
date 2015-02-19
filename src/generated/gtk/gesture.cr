require "./event_controller"

module Gtk
  class Gesture < EventController
    def initialize @gtk_gesture
    end

    def to_unsafe
      @gtk_gesture.not_nil!
    end



    def bounding_box(rect)
      __return_value = LibGtk.gesture_get_bounding_box((to_unsafe as LibGtk::Gesture*), rect)
      __return_value
    end

    def bounding_box_center(x, y)
      __return_value = LibGtk.gesture_get_bounding_box_center((to_unsafe as LibGtk::Gesture*), Float64.cast(x), Float64.cast(y))
      __return_value
    end

    def device
      __return_value = LibGtk.gesture_get_device((to_unsafe as LibGtk::Gesture*))
      Gdk::Device.new(__return_value)
    end

    def group
      __return_value = LibGtk.gesture_get_group((to_unsafe as LibGtk::Gesture*))
      __return_value
    end

    def last_event(sequence)
      __return_value = LibGtk.gesture_get_last_event((to_unsafe as LibGtk::Gesture*), (sequence.to_unsafe as LibGdk::EventSequence*))
      __return_value
    end

    def last_updated_sequence
      __return_value = LibGtk.gesture_get_last_updated_sequence((to_unsafe as LibGtk::Gesture*))
      Gdk::EventSequence.new(__return_value)
    end

    def point(sequence, x, y)
      __return_value = LibGtk.gesture_get_point((to_unsafe as LibGtk::Gesture*), sequence && (sequence.to_unsafe as LibGdk::EventSequence*), Float64.cast(x), Float64.cast(y))
      __return_value
    end

    def sequence_state(sequence)
      __return_value = LibGtk.gesture_get_sequence_state((to_unsafe as LibGtk::Gesture*), (sequence.to_unsafe as LibGdk::EventSequence*))
      __return_value
    end

    def sequences
      __return_value = LibGtk.gesture_get_sequences((to_unsafe as LibGtk::Gesture*))
      __return_value
    end

    def window
      __return_value = LibGtk.gesture_get_window((to_unsafe as LibGtk::Gesture*))
      Gdk::Window.new(__return_value)
    end

    def group(gesture)
      __return_value = LibGtk.gesture_group((to_unsafe as LibGtk::Gesture*), (gesture.to_unsafe as LibGtk::Gesture*))
      __return_value
    end

    def handles_sequence(sequence)
      __return_value = LibGtk.gesture_handles_sequence((to_unsafe as LibGtk::Gesture*), (sequence.to_unsafe as LibGdk::EventSequence*))
      __return_value
    end

    def is_active
      __return_value = LibGtk.gesture_is_active((to_unsafe as LibGtk::Gesture*))
      __return_value
    end

    def is_grouped_with(other)
      __return_value = LibGtk.gesture_is_grouped_with((to_unsafe as LibGtk::Gesture*), (other.to_unsafe as LibGtk::Gesture*))
      __return_value
    end

    def is_recognized
      __return_value = LibGtk.gesture_is_recognized((to_unsafe as LibGtk::Gesture*))
      __return_value
    end

    def set_sequence_state(sequence, state)
      __return_value = LibGtk.gesture_set_sequence_state((to_unsafe as LibGtk::Gesture*), (sequence.to_unsafe as LibGdk::EventSequence*), state)
      __return_value
    end

    def state=(state)
      __return_value = LibGtk.gesture_set_state((to_unsafe as LibGtk::Gesture*), state)
      __return_value
    end

    def window=(window)
      __return_value = LibGtk.gesture_set_window((to_unsafe as LibGtk::Gesture*), window && (window.to_unsafe as LibGdk::Window*))
      __return_value
    end

    def ungroup
      __return_value = LibGtk.gesture_ungroup((to_unsafe as LibGtk::Gesture*))
      __return_value
    end

  end
end

