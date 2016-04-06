module GLib
  class SequenceIter
    include GObject::WrappedType

    def initialize(@g_lib_sequence_iter)
    end

    def to_unsafe
      @g_lib_sequence_iter.not_nil!
    end

    def compare(b)
      __return_value = LibGLib.sequence_iter_compare((to_unsafe as LibGLib::SequenceIter*), (b.to_unsafe as LibGLib::SequenceIter*))
      __return_value
    end

    def position
      __return_value = LibGLib.sequence_iter_get_position((to_unsafe as LibGLib::SequenceIter*))
      __return_value
    end

    def begin?
      __return_value = LibGLib.sequence_iter_is_begin((to_unsafe as LibGLib::SequenceIter*))
      __return_value
    end

    def end?
      __return_value = LibGLib.sequence_iter_is_end((to_unsafe as LibGLib::SequenceIter*))
      __return_value
    end

  end
end

