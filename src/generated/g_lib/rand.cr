module GLib
  class Rand
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::Rand*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Rand*)
    end

    def double
      __return_value = LibGLib.rand_double(@pointer.as(LibGLib::Rand*))
      __return_value
    end

    def double_range(_begin, _end)
      __return_value = LibGLib.rand_double_range(@pointer.as(LibGLib::Rand*), Float64.new(_begin), Float64.new(_end))
      __return_value
    end

    def free
      LibGLib.rand_free(@pointer.as(LibGLib::Rand*))
      nil
    end

    def int
      __return_value = LibGLib.rand_int(@pointer.as(LibGLib::Rand*))
      __return_value
    end

    def int_range(_begin, _end)
      __return_value = LibGLib.rand_int_range(@pointer.as(LibGLib::Rand*), Int32.new(_begin), Int32.new(_end))
      __return_value
    end

    def seed=(seed)
      LibGLib.rand_set_seed(@pointer.as(LibGLib::Rand*), UInt32.new(seed))
      nil
    end

    def set_seed_array(seed, seed_length)
      LibGLib.rand_set_seed_array(@pointer.as(LibGLib::Rand*), seed, UInt32.new(seed_length))
      nil
    end

  end
end

