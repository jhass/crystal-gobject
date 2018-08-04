module GLib
  class Sequence
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::Sequence*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Sequence*)
    end

    def append(data)
      __return_value = LibGLib.sequence_append(@pointer.as(LibGLib::Sequence*), data ? data : nil)
      GLib::SequenceIter.new(__return_value)
    end

    def free
      LibGLib.sequence_free(@pointer.as(LibGLib::Sequence*))
      nil
    end

    def begin_iter
      __return_value = LibGLib.sequence_get_begin_iter(@pointer.as(LibGLib::Sequence*))
      GLib::SequenceIter.new(__return_value)
    end

    def end_iter
      __return_value = LibGLib.sequence_get_end_iter(@pointer.as(LibGLib::Sequence*))
      GLib::SequenceIter.new(__return_value)
    end

    def iter_at_pos(pos)
      __return_value = LibGLib.sequence_get_iter_at_pos(@pointer.as(LibGLib::Sequence*), Int32.new(pos))
      GLib::SequenceIter.new(__return_value)
    end

    def length
      __return_value = LibGLib.sequence_get_length(@pointer.as(LibGLib::Sequence*))
      __return_value
    end

    def empty?
      __return_value = LibGLib.sequence_is_empty(@pointer.as(LibGLib::Sequence*))
      __return_value
    end

    def prepend(data)
      __return_value = LibGLib.sequence_prepend(@pointer.as(LibGLib::Sequence*), data ? data : nil)
      GLib::SequenceIter.new(__return_value)
    end

    def self.get(iter)
      LibGLib.sequence_get(iter.to_unsafe.as(LibGLib::SequenceIter*))
      nil
    end

    def self.insert_before(iter, data)
      __return_value = LibGLib.sequence_insert_before(iter.to_unsafe.as(LibGLib::SequenceIter*), data ? data : nil)
      GLib::SequenceIter.new(__return_value)
    end

    def self.move(src, dest)
      LibGLib.sequence_move(src.to_unsafe.as(LibGLib::SequenceIter*), dest.to_unsafe.as(LibGLib::SequenceIter*))
      nil
    end

    def self.move_range(dest, _begin, _end)
      LibGLib.sequence_move_range(dest.to_unsafe.as(LibGLib::SequenceIter*), _begin.to_unsafe.as(LibGLib::SequenceIter*), _end.to_unsafe.as(LibGLib::SequenceIter*))
      nil
    end

    def self.range_get_midpoint(_begin, _end)
      __return_value = LibGLib.sequence_range_get_midpoint(_begin.to_unsafe.as(LibGLib::SequenceIter*), _end.to_unsafe.as(LibGLib::SequenceIter*))
      GLib::SequenceIter.new(__return_value)
    end

    def self.remove(iter)
      LibGLib.sequence_remove(iter.to_unsafe.as(LibGLib::SequenceIter*))
      nil
    end

    def self.remove_range(_begin, _end)
      LibGLib.sequence_remove_range(_begin.to_unsafe.as(LibGLib::SequenceIter*), _end.to_unsafe.as(LibGLib::SequenceIter*))
      nil
    end

    def self.set(iter, data)
      LibGLib.sequence_set(iter.to_unsafe.as(LibGLib::SequenceIter*), data ? data : nil)
      nil
    end

    def self.swap(a, b)
      LibGLib.sequence_swap(a.to_unsafe.as(LibGLib::SequenceIter*), b.to_unsafe.as(LibGLib::SequenceIter*))
      nil
    end

  end
end

