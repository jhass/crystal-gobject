module GLib
  class Cond
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      super(ptr.as(LibGLib::Cond*))
    end

    @g_lib_cond : LibGLib::Cond*?
    def initialize(@g_lib_cond : LibGLib::Cond*)
    end

    def to_unsafe
      @g_lib_cond.not_nil!
    end

    def broadcast
      LibGLib.cond_broadcast(to_unsafe.as(LibGLib::Cond*))
      nil
    end

    def clear
      LibGLib.cond_clear(to_unsafe.as(LibGLib::Cond*))
      nil
    end

    def init
      LibGLib.cond_init(to_unsafe.as(LibGLib::Cond*))
      nil
    end

    def signal
      LibGLib.cond_signal(to_unsafe.as(LibGLib::Cond*))
      nil
    end

    def wait(mutex)
      LibGLib.cond_wait(to_unsafe.as(LibGLib::Cond*), mutex.to_unsafe.as(LibGLib::Mutex*))
      nil
    end

    def wait_until(mutex, end_time)
      __return_value = LibGLib.cond_wait_until(to_unsafe.as(LibGLib::Cond*), mutex.to_unsafe.as(LibGLib::Mutex*), Int64.new(end_time))
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

