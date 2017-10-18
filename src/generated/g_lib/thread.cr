module GLib
  class Thread
    include GObject::WrappedType

    @g_lib_thread : LibGLib::Thread*?
    def initialize(@g_lib_thread : LibGLib::Thread*)
    end

    def to_unsafe
      @g_lib_thread.not_nil!
    end

    def join
      LibGLib.thread_join(to_unsafe.as(LibGLib::Thread*))
      nil
    end

    def ref
      __return_value = LibGLib.thread_ref(to_unsafe.as(LibGLib::Thread*))
      GLib::Thread.new(__return_value)
    end

    def unref
      LibGLib.thread_unref(to_unsafe.as(LibGLib::Thread*))
      nil
    end

    def self.error_quark
      __return_value = LibGLib.thread_error_quark
      __return_value
    end

    def self.exit(retval)
      LibGLib.thread_exit(retval ? retval : nil)
      nil
    end

    def self.self
      __return_value = LibGLib.thread_self
      GLib::Thread.new(__return_value)
    end

    def self.yield
      LibGLib.thread_yield
      nil
    end

  end
end

