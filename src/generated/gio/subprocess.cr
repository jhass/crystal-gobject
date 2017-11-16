module Gio
  class Subprocess < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::Subprocess*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::Subprocess*)
    end

    # Implements Initable


    def self.new(argv, flags : Gio::SubprocessFlags) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_new(argv, flags, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::Subprocess.new(__return_value)
    end

    def communicate(stdin_buf, cancellable, stdout_buf, stderr_buf) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_communicate(@pointer.as(LibGio::Subprocess*), stdin_buf ? stdin_buf.to_unsafe.as(LibGLib::Bytes*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, stdout_buf, stderr_buf, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def communicate_async(stdin_buf, cancellable, callback, user_data)
      LibGio.subprocess_communicate_async(@pointer.as(LibGio::Subprocess*), stdin_buf ? stdin_buf.to_unsafe.as(LibGLib::Bytes*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def communicate_finish(result, stdout_buf, stderr_buf) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_communicate_finish(@pointer.as(LibGio::Subprocess*), result.to_unsafe.as(LibGio::AsyncResult*), stdout_buf, stderr_buf, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def communicate_utf8(stdin_buf, cancellable, stdout_buf, stderr_buf) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_communicate_utf8(@pointer.as(LibGio::Subprocess*), stdin_buf ? stdin_buf.to_unsafe : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, stdout_buf, stderr_buf, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def communicate_utf8_async(stdin_buf, cancellable, callback, user_data)
      LibGio.subprocess_communicate_utf8_async(@pointer.as(LibGio::Subprocess*), stdin_buf ? stdin_buf.to_unsafe : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def communicate_utf8_finish(result, stdout_buf, stderr_buf) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_communicate_utf8_finish(@pointer.as(LibGio::Subprocess*), result.to_unsafe.as(LibGio::AsyncResult*), stdout_buf, stderr_buf, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def force_exit
      LibGio.subprocess_force_exit(@pointer.as(LibGio::Subprocess*))
      nil
    end

    def exit_status
      __return_value = LibGio.subprocess_get_exit_status(@pointer.as(LibGio::Subprocess*))
      __return_value
    end

    def identifier
      __return_value = LibGio.subprocess_get_identifier(@pointer.as(LibGio::Subprocess*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def if_exited
      __return_value = LibGio.subprocess_get_if_exited(@pointer.as(LibGio::Subprocess*))
      __return_value
    end

    def if_signaled
      __return_value = LibGio.subprocess_get_if_signaled(@pointer.as(LibGio::Subprocess*))
      __return_value
    end

    def status
      __return_value = LibGio.subprocess_get_status(@pointer.as(LibGio::Subprocess*))
      __return_value
    end

    def stderr_pipe
      __return_value = LibGio.subprocess_get_stderr_pipe(@pointer.as(LibGio::Subprocess*))
      Gio::InputStream.new(__return_value)
    end

    def stdin_pipe
      __return_value = LibGio.subprocess_get_stdin_pipe(@pointer.as(LibGio::Subprocess*))
      Gio::OutputStream.new(__return_value)
    end

    def stdout_pipe
      __return_value = LibGio.subprocess_get_stdout_pipe(@pointer.as(LibGio::Subprocess*))
      Gio::InputStream.new(__return_value)
    end

    def successful
      __return_value = LibGio.subprocess_get_successful(@pointer.as(LibGio::Subprocess*))
      __return_value
    end

    def term_sig
      __return_value = LibGio.subprocess_get_term_sig(@pointer.as(LibGio::Subprocess*))
      __return_value
    end

    def send_signal(signal_num)
      LibGio.subprocess_send_signal(@pointer.as(LibGio::Subprocess*), Int32.new(signal_num))
      nil
    end

    def wait(cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_wait(@pointer.as(LibGio::Subprocess*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def wait_async(cancellable, callback, user_data)
      LibGio.subprocess_wait_async(@pointer.as(LibGio::Subprocess*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def wait_check(cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_wait_check(@pointer.as(LibGio::Subprocess*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def wait_check_async(cancellable, callback, user_data)
      LibGio.subprocess_wait_check_async(@pointer.as(LibGio::Subprocess*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def wait_check_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_wait_check_finish(@pointer.as(LibGio::Subprocess*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def wait_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.subprocess_wait_finish(@pointer.as(LibGio::Subprocess*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

