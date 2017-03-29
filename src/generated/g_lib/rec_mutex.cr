module GLib
  class RecMutex
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      super(ptr.as(LibGLib::RecMutex*))
    end

    @g_lib_rec_mutex : LibGLib::RecMutex*?
    def initialize(@g_lib_rec_mutex : LibGLib::RecMutex*)
    end

    def to_unsafe
      @g_lib_rec_mutex.not_nil!
    end

    def clear
      __return_value = LibGLib.rec_mutex_clear(to_unsafe.as(LibGLib::RecMutex*))
      __return_value
    end

    def init
      __return_value = LibGLib.rec_mutex_init(to_unsafe.as(LibGLib::RecMutex*))
      __return_value
    end

    def lock
      __return_value = LibGLib.rec_mutex_lock(to_unsafe.as(LibGLib::RecMutex*))
      __return_value
    end

    def trylock
      __return_value = LibGLib.rec_mutex_trylock(to_unsafe.as(LibGLib::RecMutex*))
      __return_value
    end

    def unlock
      __return_value = LibGLib.rec_mutex_unlock(to_unsafe.as(LibGLib::RecMutex*))
      __return_value
    end

    def p
      (to_unsafe.as(LibGLib::RecMutex*).value.p)
    end

    def i
      PointerIterator.new((to_unsafe.as(LibGLib::RecMutex*).value.i)) {|__item| __item }
    end

  end
end

