module GLib
  class Mutex
    include GObject::WrappedType

    def p
      (to_unsafe.as(LibGLib::Mutex*).value.p)
    end

    def i
      PointerIterator.new((to_unsafe.as(LibGLib::Mutex*).value.i)) {|__item| __item }
    end

    @g_lib_mutex : LibGLib::Mutex*?
    def initialize(@g_lib_mutex : LibGLib::Mutex*)
    end

    def to_unsafe
      @g_lib_mutex.not_nil!.as(Void*)
    end

    def clear
      __return_value = LibGLib.mutex_clear(to_unsafe.as(LibGLib::Mutex*))
      __return_value
    end

    def init
      __return_value = LibGLib.mutex_init(to_unsafe.as(LibGLib::Mutex*))
      __return_value
    end

    def lock
      __return_value = LibGLib.mutex_lock(to_unsafe.as(LibGLib::Mutex*))
      __return_value
    end

    def trylock
      __return_value = LibGLib.mutex_trylock(to_unsafe.as(LibGLib::Mutex*))
      __return_value
    end

    def unlock
      __return_value = LibGLib.mutex_unlock(to_unsafe.as(LibGLib::Mutex*))
      __return_value
    end

  end
end

