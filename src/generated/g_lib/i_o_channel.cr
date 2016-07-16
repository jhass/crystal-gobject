module GLib
  class IOChannel
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(136, 0u8)
      super(ptr.as(LibGLib::IOChannel*))
    end

    @g_lib_i_o_channel : LibGLib::IOChannel*?
    def initialize(@g_lib_i_o_channel : LibGLib::IOChannel*)
    end

    def to_unsafe
      @g_lib_i_o_channel.not_nil!.as(Void*)
    end

    def self.new_file(filename, mode) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_new_file(filename.to_unsafe, mode.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      cast GLib::IOChannel.new(__return_value)
    end

    def self.unix_new(fd) : self
      __return_value = LibGLib.i_o_channel_unix_new(Int32.new(fd))
      cast GLib::IOChannel.new(__return_value)
    end

    def close
      __return_value = LibGLib.i_o_channel_close(to_unsafe.as(LibGLib::IOChannel*))
      __return_value
    end

    def flush
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_flush(to_unsafe.as(LibGLib::IOChannel*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def buffer_condition
      __return_value = LibGLib.i_o_channel_get_buffer_condition(to_unsafe.as(LibGLib::IOChannel*))
      __return_value
    end

    def buffer_size
      __return_value = LibGLib.i_o_channel_get_buffer_size(to_unsafe.as(LibGLib::IOChannel*))
      __return_value
    end

    def buffered
      __return_value = LibGLib.i_o_channel_get_buffered(to_unsafe.as(LibGLib::IOChannel*))
      __return_value
    end

    def close_on_unref
      __return_value = LibGLib.i_o_channel_get_close_on_unref(to_unsafe.as(LibGLib::IOChannel*))
      __return_value
    end

    def encoding
      __return_value = LibGLib.i_o_channel_get_encoding(to_unsafe.as(LibGLib::IOChannel*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def flags
      __return_value = LibGLib.i_o_channel_get_flags(to_unsafe.as(LibGLib::IOChannel*))
      __return_value
    end

    def line_term(length)
      __return_value = LibGLib.i_o_channel_get_line_term(to_unsafe.as(LibGLib::IOChannel*), length)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def init
      __return_value = LibGLib.i_o_channel_init(to_unsafe.as(LibGLib::IOChannel*))
      __return_value
    end

    def read(buf, count, bytes_read)
      __return_value = LibGLib.i_o_channel_read(to_unsafe.as(LibGLib::IOChannel*), buf.to_unsafe, UInt64.new(count), bytes_read)
      __return_value
    end

    def read_chars(buf, count, bytes_read)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_read_chars(to_unsafe.as(LibGLib::IOChannel*), buf, UInt64.new(count), bytes_read, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_line(str_return, length, terminator_pos)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_read_line(to_unsafe.as(LibGLib::IOChannel*), str_return, length, terminator_pos, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_line_string(buffer, terminator_pos)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_read_line_string(to_unsafe.as(LibGLib::IOChannel*), buffer.to_unsafe.as(LibGLib::String*), terminator_pos && terminator_pos, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_to_end(str_return, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_read_to_end(to_unsafe.as(LibGLib::IOChannel*), str_return, length, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_unichar(thechar)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_read_unichar(to_unsafe.as(LibGLib::IOChannel*), thechar, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def ref
      __return_value = LibGLib.i_o_channel_ref(to_unsafe.as(LibGLib::IOChannel*))
      GLib::IOChannel.new(__return_value)
    end

    def seek(offset, type)
      __return_value = LibGLib.i_o_channel_seek(to_unsafe.as(LibGLib::IOChannel*), Int64.new(offset), type)
      __return_value
    end

    def seek_position(offset, type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_seek_position(to_unsafe.as(LibGLib::IOChannel*), Int64.new(offset), type, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def buffer_size=(size)
      __return_value = LibGLib.i_o_channel_set_buffer_size(to_unsafe.as(LibGLib::IOChannel*), UInt64.new(size))
      __return_value
    end

    def buffered=(buffered)
      __return_value = LibGLib.i_o_channel_set_buffered(to_unsafe.as(LibGLib::IOChannel*), buffered)
      __return_value
    end

    def close_on_unref=(do_close)
      __return_value = LibGLib.i_o_channel_set_close_on_unref(to_unsafe.as(LibGLib::IOChannel*), do_close)
      __return_value
    end

    def set_encoding(encoding)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_set_encoding(to_unsafe.as(LibGLib::IOChannel*), encoding && encoding.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_flags(flags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_set_flags(to_unsafe.as(LibGLib::IOChannel*), flags, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_line_term(line_term, length)
      __return_value = LibGLib.i_o_channel_set_line_term(to_unsafe.as(LibGLib::IOChannel*), line_term && line_term.to_unsafe, Int32.new(length))
      __return_value
    end

    def shutdown(flush)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_shutdown(to_unsafe.as(LibGLib::IOChannel*), flush, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def unix_get_fd
      __return_value = LibGLib.i_o_channel_unix_get_fd(to_unsafe.as(LibGLib::IOChannel*))
      __return_value
    end

    def unref
      __return_value = LibGLib.i_o_channel_unref(to_unsafe.as(LibGLib::IOChannel*))
      __return_value
    end

    def write(buf, count, bytes_written)
      __return_value = LibGLib.i_o_channel_write(to_unsafe.as(LibGLib::IOChannel*), buf.to_unsafe, UInt64.new(count), bytes_written)
      __return_value
    end

    def write_chars(buf, count, bytes_written)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_write_chars(to_unsafe.as(LibGLib::IOChannel*), buf, Int64.new(count), bytes_written, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def write_unichar(thechar)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.i_o_channel_write_unichar(to_unsafe.as(LibGLib::IOChannel*), UInt8.new(thechar), pointerof(__error))
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

    def ref_count
      (to_unsafe.as(LibGLib::IOChannel*).value.ref_count)
    end

    def funcs
      GLib::IOFuncs.new((to_unsafe.as(LibGLib::IOChannel*).value.funcs))
    end

    def encoding
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::IOChannel*).value.encoding); ::String.new((to_unsafe.as(LibGLib::IOChannel*).value.encoding)))
    end

    def read_cd
      GLib::IConv.new((to_unsafe.as(LibGLib::IOChannel*).value.read_cd))
    end

    def write_cd
      GLib::IConv.new((to_unsafe.as(LibGLib::IOChannel*).value.write_cd))
    end

    def line_term
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::IOChannel*).value.line_term); ::String.new((to_unsafe.as(LibGLib::IOChannel*).value.line_term)))
    end

    def line_term_len
      (to_unsafe.as(LibGLib::IOChannel*).value.line_term_len)
    end

    def buf_size
      (to_unsafe.as(LibGLib::IOChannel*).value.buf_size)
    end

    def read_buf
      GLib::String.new((to_unsafe.as(LibGLib::IOChannel*).value.read_buf))
    end

    def encoded_read_buf
      GLib::String.new((to_unsafe.as(LibGLib::IOChannel*).value.encoded_read_buf))
    end

    def write_buf
      GLib::String.new((to_unsafe.as(LibGLib::IOChannel*).value.write_buf))
    end

    def partial_write_buf
      PointerIterator.new((to_unsafe.as(LibGLib::IOChannel*).value.partial_write_buf)) {|__item| __item }
    end

    def use_buffer
      (to_unsafe.as(LibGLib::IOChannel*).value.use_buffer)
    end

    def do_encode
      (to_unsafe.as(LibGLib::IOChannel*).value.do_encode)
    end

    def close_on_unref
      (to_unsafe.as(LibGLib::IOChannel*).value.close_on_unref)
    end

    def is_readable
      (to_unsafe.as(LibGLib::IOChannel*).value.is_readable)
    end

    def is_writeable
      (to_unsafe.as(LibGLib::IOChannel*).value.is_writeable)
    end

    def is_seekable
      (to_unsafe.as(LibGLib::IOChannel*).value.is_seekable)
    end

    def reserved1
      (to_unsafe.as(LibGLib::IOChannel*).value.reserved1)
    end

    def reserved2
      (to_unsafe.as(LibGLib::IOChannel*).value.reserved2)
    end

  end
end

