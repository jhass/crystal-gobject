module GLib
  class RecMutex
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      super(ptr.as(LibGLib::RecMutex*))
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::RecMutex*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::RecMutex*)
    end

    def clear
      LibGLib.rec_mutex_clear(@pointer.as(LibGLib::RecMutex*))
      nil
    end

    def init
      LibGLib.rec_mutex_init(@pointer.as(LibGLib::RecMutex*))
      nil
    end

    def lock
      LibGLib.rec_mutex_lock(@pointer.as(LibGLib::RecMutex*))
      nil
    end

    def trylock
      __return_value = LibGLib.rec_mutex_trylock(@pointer.as(LibGLib::RecMutex*))
      __return_value
    end

    def unlock
      LibGLib.rec_mutex_unlock(@pointer.as(LibGLib::RecMutex*))
      nil
    end

    def p
      (to_unsafe.as(LibGLib::RecMutex*).value.p)
    end

    def i
      PointerIterator.new((to_unsafe.as(LibGLib::RecMutex*).value.i)) {|__item| __item }
    end

  end
end

