module GLib
  class RWLock
    include GObject::WrappedType

    def initialize(@g_lib_r_w_lock)
    end

    def to_unsafe
      @g_lib_r_w_lock.not_nil!
    end

    def clear
      __return_value = LibGLib.r_w_lock_clear((to_unsafe as LibGLib::RWLock*))
      __return_value
    end

    def init
      __return_value = LibGLib.r_w_lock_init((to_unsafe as LibGLib::RWLock*))
      __return_value
    end

    def reader_lock
      __return_value = LibGLib.r_w_lock_reader_lock((to_unsafe as LibGLib::RWLock*))
      __return_value
    end

    def reader_trylock
      __return_value = LibGLib.r_w_lock_reader_trylock((to_unsafe as LibGLib::RWLock*))
      __return_value
    end

    def reader_unlock
      __return_value = LibGLib.r_w_lock_reader_unlock((to_unsafe as LibGLib::RWLock*))
      __return_value
    end

    def writer_lock
      __return_value = LibGLib.r_w_lock_writer_lock((to_unsafe as LibGLib::RWLock*))
      __return_value
    end

    def writer_trylock
      __return_value = LibGLib.r_w_lock_writer_trylock((to_unsafe as LibGLib::RWLock*))
      __return_value
    end

    def writer_unlock
      __return_value = LibGLib.r_w_lock_writer_unlock((to_unsafe as LibGLib::RWLock*))
      __return_value
    end

  end
end

