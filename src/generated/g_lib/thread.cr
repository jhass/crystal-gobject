module GLib
  class Thread
    include GObject::WrappedType

    def initialize(@g_lib_thread)
    end

    def to_unsafe
      @g_lib_thread.not_nil!
    end

    def ref
      __return_value = LibGLib.thread_ref((to_unsafe as LibGLib::Thread*))
      GLib::Thread.new(__return_value)
    end

    def unref
      __return_value = LibGLib.thread_unref((to_unsafe as LibGLib::Thread*))
      __return_value
    end

    def self.error_quark
      __return_value = LibGLib.thread_error_quark
      __return_value
    end

    def self.exit(retval)
      __return_value = LibGLib.thread_exit(retval)
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

