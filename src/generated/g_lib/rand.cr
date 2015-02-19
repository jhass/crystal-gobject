module GLib
  class Rand
    include GObject::WrappedType
    def initialize @g_lib_rand
    end

    def to_unsafe
      @g_lib_rand.not_nil!
    end

    def double
      __return_value = LibGLib.rand_double((to_unsafe as LibGLib::Rand*))
      __return_value
    end

    def double_range(_begin, end)
      __return_value = LibGLib.rand_double_range((to_unsafe as LibGLib::Rand*), Float64.cast(_begin), Float64.cast(end))
      __return_value
    end

    def free
      __return_value = LibGLib.rand_free((to_unsafe as LibGLib::Rand*))
      __return_value
    end

    def int
      __return_value = LibGLib.rand_int((to_unsafe as LibGLib::Rand*))
      __return_value
    end

    def int_range(_begin, end)
      __return_value = LibGLib.rand_int_range((to_unsafe as LibGLib::Rand*), Int32.cast(_begin), Int32.cast(end))
      __return_value
    end

    def seed=(seed)
      __return_value = LibGLib.rand_set_seed((to_unsafe as LibGLib::Rand*), UInt32.cast(seed))
      __return_value
    end

    def seed_array=(seed, seed_length)
      __return_value = LibGLib.rand_set_seed_array((to_unsafe as LibGLib::Rand*), seed, UInt32.cast(seed_length))
      __return_value
    end

  end
end

