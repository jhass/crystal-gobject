require "./event_controller"

module Gtk
  class Gesture < EventController
    @pointer : Void*
    def initialize(pointer : LibGtk::Gesture*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Gesture*)
    end

    def n_points
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "n_points", gvalue)
      gvalue
    end

    def window
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "window", gvalue)
      Gdk::Window.cast(gvalue.object)
    end

    def bounding_box(rect)
      __return_value = LibGtk.gesture_get_bounding_box(@pointer.as(LibGtk::Gesture*), rect)
      __return_value
    end

    def bounding_box_center(x, y)
      __return_value = LibGtk.gesture_get_bounding_box_center(@pointer.as(LibGtk::Gesture*), x, y)
      __return_value
    end

    def device
      __return_value = LibGtk.gesture_get_device(@pointer.as(LibGtk::Gesture*))
      Gdk::Device.new(__return_value) if __return_value
    end

    def group
      __return_value = LibGtk.gesture_get_group(@pointer.as(LibGtk::Gesture*))
      GLib::ListIterator(Gtk::Gesture, LibGtk::Gesture**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def last_event(sequence)
      __return_value = LibGtk.gesture_get_last_event(@pointer.as(LibGtk::Gesture*), sequence ? sequence.to_unsafe.as(LibGdk::EventSequence*) : nil)
      Gdk::Event.new(__return_value) if __return_value
    end

    def last_updated_sequence
      __return_value = LibGtk.gesture_get_last_updated_sequence(@pointer.as(LibGtk::Gesture*))
      Gdk::EventSequence.new(__return_value) if __return_value
    end

    def point(sequence, x, y)
      __return_value = LibGtk.gesture_get_point(@pointer.as(LibGtk::Gesture*), sequence ? sequence.to_unsafe.as(LibGdk::EventSequence*) : nil, x, y)
      __return_value
    end

    def sequence_state(sequence)
      __return_value = LibGtk.gesture_get_sequence_state(@pointer.as(LibGtk::Gesture*), sequence.to_unsafe.as(LibGdk::EventSequence*))
      __return_value
    end

    def sequences
      __return_value = LibGtk.gesture_get_sequences(@pointer.as(LibGtk::Gesture*))
      GLib::ListIterator(Gdk::EventSequence, LibGdk::EventSequence*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def window
      __return_value = LibGtk.gesture_get_window(@pointer.as(LibGtk::Gesture*))
      Gdk::Window.new(__return_value) if __return_value
    end

    def group(gesture)
      LibGtk.gesture_group(@pointer.as(LibGtk::Gesture*), gesture.to_unsafe.as(LibGtk::Gesture*))
      nil
    end

    def handles_sequence(sequence)
      __return_value = LibGtk.gesture_handles_sequence(@pointer.as(LibGtk::Gesture*), sequence ? sequence.to_unsafe.as(LibGdk::EventSequence*) : nil)
      __return_value
    end

    def active?
      __return_value = LibGtk.gesture_is_active(@pointer.as(LibGtk::Gesture*))
      __return_value
    end

    def grouped_with?(other)
      __return_value = LibGtk.gesture_is_grouped_with(@pointer.as(LibGtk::Gesture*), other.to_unsafe.as(LibGtk::Gesture*))
      __return_value
    end

    def recognized?
      __return_value = LibGtk.gesture_is_recognized(@pointer.as(LibGtk::Gesture*))
      __return_value
    end

    def set_sequence_state(sequence, state : Gtk::EventSequenceState)
      __return_value = LibGtk.gesture_set_sequence_state(@pointer.as(LibGtk::Gesture*), sequence.to_unsafe.as(LibGdk::EventSequence*), state)
      __return_value
    end

    def state=(state : Gtk::EventSequenceState)
      __return_value = LibGtk.gesture_set_state(@pointer.as(LibGtk::Gesture*), state)
      __return_value
    end

    def window=(window)
      LibGtk.gesture_set_window(@pointer.as(LibGtk::Gesture*), window ? window.to_unsafe.as(LibGdk::Window*) : nil)
      nil
    end

    def ungroup
      LibGtk.gesture_ungroup(@pointer.as(LibGtk::Gesture*))
      nil
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

