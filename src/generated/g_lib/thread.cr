module GLib
  class Thread
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::Thread*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Thread*)
    end

    def join
      LibGLib.thread_join(@pointer.as(LibGLib::Thread*))
      nil
    end

    def ref
      __return_value = LibGLib.thread_ref(@pointer.as(LibGLib::Thread*))
      GLib::Thread.new(__return_value)
    end

    def unref
      LibGLib.thread_unref(@pointer.as(LibGLib::Thread*))
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

