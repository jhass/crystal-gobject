module GLib
  class RWLock
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      super(ptr.as(LibGLib::RWLock*))
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::RWLock*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::RWLock*)
    end

    def clear
      LibGLib.r_w_lock_clear(@pointer.as(LibGLib::RWLock*))
      nil
    end

    def init
      LibGLib.r_w_lock_init(@pointer.as(LibGLib::RWLock*))
      nil
    end

    def reader_lock
      LibGLib.r_w_lock_reader_lock(@pointer.as(LibGLib::RWLock*))
      nil
    end

    def reader_trylock
      __return_value = LibGLib.r_w_lock_reader_trylock(@pointer.as(LibGLib::RWLock*))
      __return_value
    end

    def reader_unlock
      LibGLib.r_w_lock_reader_unlock(@pointer.as(LibGLib::RWLock*))
      nil
    end

    def writer_lock
      LibGLib.r_w_lock_writer_lock(@pointer.as(LibGLib::RWLock*))
      nil
    end

    def writer_trylock
      __return_value = LibGLib.r_w_lock_writer_trylock(@pointer.as(LibGLib::RWLock*))
      __return_value
    end

    def writer_unlock
      LibGLib.r_w_lock_writer_unlock(@pointer.as(LibGLib::RWLock*))
      nil
    end

    def p
      (to_unsafe.as(LibGLib::RWLock*).value.p)
    end

    def i
      PointerIterator.new((to_unsafe.as(LibGLib::RWLock*).value.i)) {|__item| __item }
    end

  end
end

