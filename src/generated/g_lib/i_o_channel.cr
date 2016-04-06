module GLib
  class IOChannel
    include GObject::WrappedType

    def initialize(@g_lib_i_o_channel)
    end

    def to_unsafe
      @g_lib_i_o_channel.not_nil!
    end

    def self.new_file(filename, mode)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_new_file(filename, mode, pointerof(__error))
      GLib::Error.assert __error
      GLib::IOChannel.new(__return_value)
    end

    def self.unix_new(fd)
      __return_value = LibGLib.i_o_channel_unix_new(Int32.new(fd))
      GLib::IOChannel.new(__return_value)
    end

    def close
      __return_value = LibGLib.i_o_channel_close((to_unsafe as LibGLib::IOChannel*))
      __return_value
    end

    def flush
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_flush((to_unsafe as LibGLib::IOChannel*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def buffer_condition
      __return_value = LibGLib.i_o_channel_get_buffer_condition((to_unsafe as LibGLib::IOChannel*))
      __return_value
    end

    def buffer_size
      __return_value = LibGLib.i_o_channel_get_buffer_size((to_unsafe as LibGLib::IOChannel*))
      __return_value
    end

    def buffered
      __return_value = LibGLib.i_o_channel_get_buffered((to_unsafe as LibGLib::IOChannel*))
      __return_value
    end

    def close_on_unref
      __return_value = LibGLib.i_o_channel_get_close_on_unref((to_unsafe as LibGLib::IOChannel*))
      __return_value
    end

    def encoding
      __return_value = LibGLib.i_o_channel_get_encoding((to_unsafe as LibGLib::IOChannel*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def flags
      __return_value = LibGLib.i_o_channel_get_flags((to_unsafe as LibGLib::IOChannel*))
      __return_value
    end

    def line_term(length)
      __return_value = LibGLib.i_o_channel_get_line_term((to_unsafe as LibGLib::IOChannel*), length)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def init
      __return_value = LibGLib.i_o_channel_init((to_unsafe as LibGLib::IOChannel*))
      __return_value
    end

    def read(buf, count, bytes_read)
      __return_value = LibGLib.i_o_channel_read((to_unsafe as LibGLib::IOChannel*), buf, UInt64.new(count), bytes_read)
      __return_value
    end

    def read_chars(buf, count, bytes_read)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_read_chars((to_unsafe as LibGLib::IOChannel*), buf, UInt64.new(count), UInt64.new(bytes_read), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_line(str_return, length, terminator_pos)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_read_line((to_unsafe as LibGLib::IOChannel*), str_return, UInt64.new(length), UInt64.new(terminator_pos), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_line_string(buffer, terminator_pos)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_read_line_string((to_unsafe as LibGLib::IOChannel*), (buffer.to_unsafe as LibGLib::String*), terminator_pos && terminator_pos, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_to_end(str_return, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_read_to_end((to_unsafe as LibGLib::IOChannel*), str_return, UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_unichar(thechar)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_read_unichar((to_unsafe as LibGLib::IOChannel*), UInt8.new(thechar), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def ref
      __return_value = LibGLib.i_o_channel_ref((to_unsafe as LibGLib::IOChannel*))
      GLib::IOChannel.new(__return_value)
    end

    def seek(offset, type)
      __return_value = LibGLib.i_o_channel_seek((to_unsafe as LibGLib::IOChannel*), Int64.new(offset), type)
      __return_value
    end

    def seek_position(offset, type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_seek_position((to_unsafe as LibGLib::IOChannel*), Int64.new(offset), type, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def buffer_size=(size)
      __return_value = LibGLib.i_o_channel_set_buffer_size((to_unsafe as LibGLib::IOChannel*), UInt64.new(size))
      __return_value
    end

    def buffered=(buffered)
      __return_value = LibGLib.i_o_channel_set_buffered((to_unsafe as LibGLib::IOChannel*), buffered)
      __return_value
    end

    def close_on_unref=(do_close)
      __return_value = LibGLib.i_o_channel_set_close_on_unref((to_unsafe as LibGLib::IOChannel*), do_close)
      __return_value
    end

    def set_encoding(encoding)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_set_encoding((to_unsafe as LibGLib::IOChannel*), encoding && encoding, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_flags(flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_set_flags((to_unsafe as LibGLib::IOChannel*), flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_line_term(line_term, length)
      __return_value = LibGLib.i_o_channel_set_line_term((to_unsafe as LibGLib::IOChannel*), line_term && line_term, Int32.new(length))
      __return_value
    end

    def shutdown(flush)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_shutdown((to_unsafe as LibGLib::IOChannel*), flush, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def unix_get_fd
      __return_value = LibGLib.i_o_channel_unix_get_fd((to_unsafe as LibGLib::IOChannel*))
      __return_value
    end

    def unref
      __return_value = LibGLib.i_o_channel_unref((to_unsafe as LibGLib::IOChannel*))
      __return_value
    end

    def write(buf, count, bytes_written)
      __return_value = LibGLib.i_o_channel_write((to_unsafe as LibGLib::IOChannel*), buf, UInt64.new(count), bytes_written)
      __return_value
    end

    def write_chars(buf, count, bytes_written)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_write_chars((to_unsafe as LibGLib::IOChannel*), buf, Int64.new(count), UInt64.new(bytes_written), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def write_unichar(thechar)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_write_unichar((to_unsafe as LibGLib::IOChannel*), UInt8.new(thechar), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.error_from_errno(en)
      __return_value = LibGLib.i_o_channel_error_from_errno(Int32.new(en))
      __return_value
    end

    def self.error_quark
      __return_value = LibGLib.i_o_channel_error_quark
      __return_value
    end

  end
end

