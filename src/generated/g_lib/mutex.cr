module GLib
  class Mutex
    include GObject::WrappedType

    def p
      (to_unsafe.as(LibGLib::Mutex*).value.p)
    end

    def i
      PointerIterator.new((to_unsafe.as(LibGLib::Mutex*).value.i)) {|__item| __item }
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::Mutex*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Mutex*)
    end

    def clear
      LibGLib.mutex_clear(@pointer.as(LibGLib::Mutex*))
      nil
    end

    def init
      LibGLib.mutex_init(@pointer.as(LibGLib::Mutex*))
      nil
    end

    def lock
      LibGLib.mutex_lock(@pointer.as(LibGLib::Mutex*))
      nil
    end

    def trylock
      __return_value = LibGLib.mutex_trylock(@pointer.as(LibGLib::Mutex*))
      __return_value
    end

    def unlock
      LibGLib.mutex_unlock(@pointer.as(LibGLib::Mutex*))
      nil
    end

  end
end

