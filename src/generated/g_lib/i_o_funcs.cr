module GLib
  class IOFuncs
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      super(ptr.as(LibGLib::IOFuncs*))
    end

    @g_lib_i_o_funcs : LibGLib::IOFuncs*?
    def initialize(@g_lib_i_o_funcs : LibGLib::IOFuncs*)
    end

    def to_unsafe
      @g_lib_i_o_funcs.not_nil!
    end

    def io_read
      (to_unsafe.as(LibGLib::IOFuncs*).value.io_read)
    end

    def io_write
      (to_unsafe.as(LibGLib::IOFuncs*).value.io_write)
    end

    def io_seek
      (to_unsafe.as(LibGLib::IOFuncs*).value.io_seek)
    end

    def io_close
      (to_unsafe.as(LibGLib::IOFuncs*).value.io_close)
    end

    def io_create_watch
      (to_unsafe.as(LibGLib::IOFuncs*).value.io_create_watch)
    end

    def io_free
      (to_unsafe.as(LibGLib::IOFuncs*).value.io_free)
    end

    def io_set_flags
      (to_unsafe.as(LibGLib::IOFuncs*).value.io_set_flags)
    end

    def io_get_flags
      (to_unsafe.as(LibGLib::IOFuncs*).value.io_get_flags)
    end

  end
end

