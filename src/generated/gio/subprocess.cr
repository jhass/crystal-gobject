module Gio
  class Subprocess < GObject::Object
    def initialize(@gio_subprocess)
    end

    def to_unsafe
      @gio_subprocess.not_nil!
    end

    # Implements Initable


    def self.new_internal(argv, flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_new(argv, flags, pointerof(__error))
      GLib::Error.assert __error
      Gio::Subprocess.new(__return_value)
    end

    def communicate(stdin_buf, cancellable, stdout_buf, stderr_buf)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_communicate((to_unsafe as LibGio::Subprocess*), stdin_buf && (stdin_buf.to_unsafe as LibGLib::Bytes*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), (stdout_buf.to_unsafe as LibGLib::Bytes*), (stderr_buf.to_unsafe as LibGLib::Bytes*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def communicate_async(stdin_buf, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.subprocess_communicate_async((to_unsafe as LibGio::Subprocess*), stdin_buf && (stdin_buf.to_unsafe as LibGLib::Bytes*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def communicate_finish(result, stdout_buf, stderr_buf)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_communicate_finish((to_unsafe as LibGio::Subprocess*), (result.to_unsafe as LibGio::AsyncResult*), (stdout_buf.to_unsafe as LibGLib::Bytes*), (stderr_buf.to_unsafe as LibGLib::Bytes*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def communicate_utf8(stdin_buf, cancellable, stdout_buf, stderr_buf)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_communicate_utf8((to_unsafe as LibGio::Subprocess*), stdin_buf && stdin_buf, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), stdout_buf, stderr_buf, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def communicate_utf8_async(stdin_buf, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.subprocess_communicate_utf8_async((to_unsafe as LibGio::Subprocess*), stdin_buf && stdin_buf, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def communicate_utf8_finish(result, stdout_buf, stderr_buf)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_communicate_utf8_finish((to_unsafe as LibGio::Subprocess*), (result.to_unsafe as LibGio::AsyncResult*), stdout_buf, stderr_buf, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def force_exit
      __return_value = LibGio.subprocess_force_exit((to_unsafe as LibGio::Subprocess*))
      __return_value
    end

    def exit_status
      __return_value = LibGio.subprocess_get_exit_status((to_unsafe as LibGio::Subprocess*))
      __return_value
    end

    def identifier
      __return_value = LibGio.subprocess_get_identifier((to_unsafe as LibGio::Subprocess*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def if_exited
      __return_value = LibGio.subprocess_get_if_exited((to_unsafe as LibGio::Subprocess*))
      __return_value
    end

    def if_signaled
      __return_value = LibGio.subprocess_get_if_signaled((to_unsafe as LibGio::Subprocess*))
      __return_value
    end

    def status
      __return_value = LibGio.subprocess_get_status((to_unsafe as LibGio::Subprocess*))
      __return_value
    end

    def stderr_pipe
      __return_value = LibGio.subprocess_get_stderr_pipe((to_unsafe as LibGio::Subprocess*))
      Gio::InputStream.new(__return_value)
    end

    def stdin_pipe
      __return_value = LibGio.subprocess_get_stdin_pipe((to_unsafe as LibGio::Subprocess*))
      Gio::OutputStream.new(__return_value)
    end

    def stdout_pipe
      __return_value = LibGio.subprocess_get_stdout_pipe((to_unsafe as LibGio::Subprocess*))
      Gio::InputStream.new(__return_value)
    end

    def successful
      __return_value = LibGio.subprocess_get_successful((to_unsafe as LibGio::Subprocess*))
      __return_value
    end

    def term_sig
      __return_value = LibGio.subprocess_get_term_sig((to_unsafe as LibGio::Subprocess*))
      __return_value
    end

    def send_signal(signal_num)
      __return_value = LibGio.subprocess_send_signal((to_unsafe as LibGio::Subprocess*), Int32.new(signal_num))
      __return_value
    end

    def wait(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_wait((to_unsafe as LibGio::Subprocess*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def wait_async(cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.subprocess_wait_async((to_unsafe as LibGio::Subprocess*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def wait_check(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_wait_check((to_unsafe as LibGio::Subprocess*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def wait_check_async(cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.subprocess_wait_check_async((to_unsafe as LibGio::Subprocess*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def wait_check_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_wait_check_finish((to_unsafe as LibGio::Subprocess*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def wait_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_wait_finish((to_unsafe as LibGio::Subprocess*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

