module GLib
  class SequenceIter
    include GObject::WrappedType

    @g_lib_sequence_iter : LibGLib::SequenceIter*?
    def initialize(@g_lib_sequence_iter : LibGLib::SequenceIter*)
    end

    def to_unsafe
      @g_lib_sequence_iter.not_nil!
    end

    def compare(b)
      __return_value = LibGLib.sequence_iter_compare(to_unsafe.as(LibGLib::SequenceIter*), b.to_unsafe.as(LibGLib::SequenceIter*))
      __return_value
    end

    def position
      __return_value = LibGLib.sequence_iter_get_position(to_unsafe.as(LibGLib::SequenceIter*))
      __return_value
    end

    def sequence
      __return_value = LibGLib.sequence_iter_get_sequence(to_unsafe.as(LibGLib::SequenceIter*))
      GLib::Sequence.new(__return_value)
    end

    def begin?
      __return_value = LibGLib.sequence_iter_is_begin(to_unsafe.as(LibGLib::SequenceIter*))
      __return_value
    end

    def end?
      __return_value = LibGLib.sequence_iter_is_end(to_unsafe.as(LibGLib::SequenceIter*))
      __return_value
    end

    def move(delta)
      __return_value = LibGLib.sequence_iter_move(to_unsafe.as(LibGLib::SequenceIter*), Int32.new(delta))
      GLib::SequenceIter.new(__return_value)
    end

    def next
      __return_value = LibGLib.sequence_iter_next(to_unsafe.as(LibGLib::SequenceIter*))
      GLib::SequenceIter.new(__return_value)
    end

    def prev
      __return_value = LibGLib.sequence_iter_prev(to_unsafe.as(LibGLib::SequenceIter*))
      GLib::SequenceIter.new(__return_value)
    end

  end
end

