require "./event_controller"

module Gtk
  class Gesture < EventController
    def initialize(@gtk_gesture)
    end

    def to_unsafe
      @gtk_gesture.not_nil!
    end



    def bounding_box(rect)
      __return_value = LibGtk.gesture_get_bounding_box((to_unsafe as LibGtk::Gesture*), rect)
      __return_value
    end

    def bounding_box_center(x, y)
      __return_value = LibGtk.gesture_get_bounding_box_center((to_unsafe as LibGtk::Gesture*), Float64.new(x), Float64.new(y))
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
      __return_value if __return_value
    end

    def last_updated_sequence
      __return_value = LibGtk.gesture_get_last_updated_sequence((to_unsafe as LibGtk::Gesture*))
      Gdk::EventSequence.new(__return_value) if __return_value
    end

    def point(sequence, x, y)
      __return_value = LibGtk.gesture_get_point((to_unsafe as LibGtk::Gesture*), sequence && (sequence.to_unsafe as LibGdk::EventSequence*), Float64.new(x), Float64.new(y))
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

    def active?
      __return_value = LibGtk.gesture_is_active((to_unsafe as LibGtk::Gesture*))
      __return_value
    end

    def grouped_with?(other)
      __return_value = LibGtk.gesture_is_grouped_with((to_unsafe as LibGtk::Gesture*), (other.to_unsafe as LibGtk::Gesture*))
      __return_value
    end

    def recognized?
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

    alias BeginSignal = Gesture, Gdk::EventSequence -> 
    def on_begin_(&__block : BeginSignal)
      __callback = ->(_arg0 : LibGtk::Gesture*, _arg1 : LibGtk::LibGdk::EventSequence*) {
       __return_value = __block.call(Gesture.new(_arg0), Gdk::EventSequence.new(_arg1))
       __return_value
      }
      connect("begin", __callback)
    end

    alias CancelSignal = Gesture, Gdk::EventSequence -> 
    def on_cancel(&__block : CancelSignal)
      __callback = ->(_arg0 : LibGtk::Gesture*, _arg1 : LibGtk::LibGdk::EventSequence*) {
       __return_value = __block.call(Gesture.new(_arg0), Gdk::EventSequence.new(_arg1))
       __return_value
      }
      connect("cancel", __callback)
    end

    alias EndSignal = Gesture, Gdk::EventSequence -> 
    def on_end_(&__block : EndSignal)
      __callback = ->(_arg0 : LibGtk::Gesture*, _arg1 : LibGtk::LibGdk::EventSequence*) {
       __return_value = __block.call(Gesture.new(_arg0), Gdk::EventSequence.new(_arg1))
       __return_value
      }
      connect("end", __callback)
    end

    alias SequenceStateChangedSignal = Gesture, Gdk::EventSequence, Gtk::EventSequenceState -> 
    def on_sequence_state_changed(&__block : SequenceStateChangedSignal)
      __callback = ->(_arg0 : LibGtk::Gesture*, _arg1 : LibGtk::LibGdk::EventSequence*, _arg2 : LibGtk::LibGtk::EventSequenceState*) {
       __return_value = __block.call(Gesture.new(_arg0), Gdk::EventSequence.new(_arg1), _arg2)
       __return_value
      }
      connect("sequence-state-changed", __callback)
    end

    alias UpdateSignal = Gesture, Gdk::EventSequence -> 
    def on_update(&__block : UpdateSignal)
      __callback = ->(_arg0 : LibGtk::Gesture*, _arg1 : LibGtk::LibGdk::EventSequence*) {
       __return_value = __block.call(Gesture.new(_arg0), Gdk::EventSequence.new(_arg1))
       __return_value
      }
      connect("update", __callback)
    end

  end
end

