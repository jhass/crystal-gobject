module GLib
  class SequenceIter
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::SequenceIter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::SequenceIter*)
    end

    def compare(b)
      __return_value = LibGLib.sequence_iter_compare(@pointer.as(LibGLib::SequenceIter*), b.to_unsafe.as(LibGLib::SequenceIter*))
      __return_value
    end

    def position
      __return_value = LibGLib.sequence_iter_get_position(@pointer.as(LibGLib::SequenceIter*))
      __return_value
    end

    def sequence
      __return_value = LibGLib.sequence_iter_get_sequence(@pointer.as(LibGLib::SequenceIter*))
      GLib::Sequence.new(__return_value)
    end

    def begin?
      __return_value = LibGLib.sequence_iter_is_begin(@pointer.as(LibGLib::SequenceIter*))
      __return_value
    end

    def end?
      __return_value = LibGLib.sequence_iter_is_end(@pointer.as(LibGLib::SequenceIter*))
      __return_value
    end

    def move(delta)
      __return_value = LibGLib.sequence_iter_move(@pointer.as(LibGLib::SequenceIter*), Int32.new(delta))
      GLib::SequenceIter.new(__return_value)
    end

    def next
      __return_value = LibGLib.sequence_iter_next(@pointer.as(LibGLib::SequenceIter*))
      GLib::SequenceIter.new(__return_value)
    end

    def prev
      __return_value = LibGLib.sequence_iter_prev(@pointer.as(LibGLib::SequenceIter*))
      GLib::SequenceIter.new(__return_value)
    end

  end
end

