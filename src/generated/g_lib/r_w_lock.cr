module GLib
  class RWLock
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      super(ptr.as(LibGLib::RWLock*))
    end

    @g_lib_r_w_lock : LibGLib::RWLock*?
    def initialize(@g_lib_r_w_lock : LibGLib::RWLock*)
    end

    def to_unsafe
      @g_lib_r_w_lock.not_nil!
    end

    def clear
      __return_value = LibGLib.r_w_lock_clear(to_unsafe.as(LibGLib::RWLock*))
      __return_value
    end

    def init
      __return_value = LibGLib.r_w_lock_init(to_unsafe.as(LibGLib::RWLock*))
      __return_value
    end

    def reader_lock
      __return_value = LibGLib.r_w_lock_reader_lock(to_unsafe.as(LibGLib::RWLock*))
      __return_value
    end

    def reader_trylock
      __return_value = LibGLib.r_w_lock_reader_trylock(to_unsafe.as(LibGLib::RWLock*))
      __return_value
    end

    def reader_unlock
      __return_value = LibGLib.r_w_lock_reader_unlock(to_unsafe.as(LibGLib::RWLock*))
      __return_value
    end

    def writer_lock
      __return_value = LibGLib.r_w_lock_writer_lock(to_unsafe.as(LibGLib::RWLock*))
      __return_value
    end

    def writer_trylock
      __return_value = LibGLib.r_w_lock_writer_trylock(to_unsafe.as(LibGLib::RWLock*))
      __return_value
    end

    def writer_unlock
      __return_value = LibGLib.r_w_lock_writer_unlock(to_unsafe.as(LibGLib::RWLock*))
      __return_value
    end

    def p
      (to_unsafe.as(LibGLib::RWLock*).value.p)
    end

    def i
      PointerIterator.new((to_unsafe.as(LibGLib::RWLock*).value.i)) {|__item| __item }
    end

  end
end

