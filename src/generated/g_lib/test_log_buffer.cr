module GLib
  class TestLogBuffer
    include GObject::WrappedType

    def initialize(@g_lib_test_log_buffer)
    end

    def to_unsafe
      @g_lib_test_log_buffer.not_nil!
    end

    def free
      __return_value = LibGLib.test_log_buffer_free((to_unsafe as LibGLib::TestLogBuffer*))
      __return_value
    end

    def push(n_bytes, bytes)
      __return_value = LibGLib.test_log_buffer_push((to_unsafe as LibGLib::TestLogBuffer*), UInt32.new(n_bytes), bytes)
      __return_value
    end

  end
end

