module GLib
  class TestLogBuffer
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      super(ptr.as(LibGLib::TestLogBuffer*))
    end

    @g_lib_test_log_buffer : LibGLib::TestLogBuffer*?
    def initialize(@g_lib_test_log_buffer : LibGLib::TestLogBuffer*)
    end

    def to_unsafe
      @g_lib_test_log_buffer.not_nil!.as(Void*)
    end

    def free
      __return_value = LibGLib.test_log_buffer_free(to_unsafe.as(LibGLib::TestLogBuffer*))
      __return_value
    end

    def push(n_bytes, bytes)
      __return_value = LibGLib.test_log_buffer_push(to_unsafe.as(LibGLib::TestLogBuffer*), UInt32.new(n_bytes), bytes)
      __return_value
    end

    def data
      GLib::String.new((to_unsafe.as(LibGLib::TestLogBuffer*).value.data))
    end

    def msgs
      (to_unsafe.as(LibGLib::TestLogBuffer*).value.msgs)
    end

  end
end

