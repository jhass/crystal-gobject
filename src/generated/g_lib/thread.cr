module GLib
  class Thread
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGLib::Thread*))
    end

    @g_lib_thread : LibGLib::Thread*?
    def initialize(@g_lib_thread : LibGLib::Thread*)
    end

    def to_unsafe
      @g_lib_thread.not_nil!.as(Void*)
    end

    def join
      __return_value = LibGLib.thread_join(to_unsafe.as(LibGLib::Thread*))
      __return_value if __return_value
    end

    def ref
      __return_value = LibGLib.thread_ref(to_unsafe.as(LibGLib::Thread*))
      GLib::Thread.new(__return_value)
    end

    def unref
      __return_value = LibGLib.thread_unref(to_unsafe.as(LibGLib::Thread*))
      __return_value
    end

    def self.error_quark
      __return_value = LibGLib.thread_error_quark
      __return_value
    end

    def self.exit(retval)
      __return_value = LibGLib.thread_exit(retval && retval)
      __return_value
    end

    def self.self
      __return_value = LibGLib.thread_self
      GLib::Thread.new(__return_value)
    end

    def self.yield
      __return_value = LibGLib.thread_yield
      __return_value
    end

  end
end

