module GLib
  class Cond
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      super(ptr.as(LibGLib::Cond*))
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::Cond*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Cond*)
    end

    def broadcast
      LibGLib.cond_broadcast(@pointer.as(LibGLib::Cond*))
      nil
    end

    def clear
      LibGLib.cond_clear(@pointer.as(LibGLib::Cond*))
      nil
    end

    def init
      LibGLib.cond_init(@pointer.as(LibGLib::Cond*))
      nil
    end

    def signal
      LibGLib.cond_signal(@pointer.as(LibGLib::Cond*))
      nil
    end

    def wait(mutex)
      LibGLib.cond_wait(@pointer.as(LibGLib::Cond*), mutex.to_unsafe.as(LibGLib::Mutex*))
      nil
    end

    def wait_until(mutex, end_time)
      __return_value = LibGLib.cond_wait_until(@pointer.as(LibGLib::Cond*), mutex.to_unsafe.as(LibGLib::Mutex*), Int64.new(end_time))
      __return_value
    end

    def p
      (to_unsafe.as(LibGLib::Cond*).value.p)
    end

    def i
      PointerIterator.new((to_unsafe.as(LibGLib::Cond*).value.i)) {|__item| __item }
    end

  end
end

