module GLib
  class Sequence
    include GObject::WrappedType

    def initialize(@g_lib_sequence)
    end

    def to_unsafe
      @g_lib_sequence.not_nil!
    end

    def free
      __return_value = LibGLib.sequence_free((to_unsafe as LibGLib::Sequence*))
      __return_value
    end

    def length
      __return_value = LibGLib.sequence_get_length((to_unsafe as LibGLib::Sequence*))
      __return_value
    end

    def self.move(src, dest)
      __return_value = LibGLib.sequence_move((src.to_unsafe as LibGLib::SequenceIter*), (dest.to_unsafe as LibGLib::SequenceIter*))
      __return_value
    end

    def self.move_range(dest, _begin, end)
      __return_value = LibGLib.sequence_move_range((dest.to_unsafe as LibGLib::SequenceIter*), (_begin.to_unsafe as LibGLib::SequenceIter*), (end.to_unsafe as LibGLib::SequenceIter*))
      __return_value
    end

    def self.remove(iter)
      __return_value = LibGLib.sequence_remove((iter.to_unsafe as LibGLib::SequenceIter*))
      __return_value
    end

    def self.remove_range(_begin, end)
      __return_value = LibGLib.sequence_remove_range((_begin.to_unsafe as LibGLib::SequenceIter*), (end.to_unsafe as LibGLib::SequenceIter*))
      __return_value
    end

    def self.set(iter, data)
      __return_value = LibGLib.sequence_set((iter.to_unsafe as LibGLib::SequenceIter*), data)
      __return_value
    end

    def self.swap(a, b)
      __return_value = LibGLib.sequence_swap((a.to_unsafe as LibGLib::SequenceIter*), (b.to_unsafe as LibGLib::SequenceIter*))
      __return_value
    end

  end
end

