require "./filter_output_stream"

module Gio
  class DataOutputStream < FilterOutputStream
    def initialize(@gio_data_output_stream)
    end

    def to_unsafe
      @gio_data_output_stream.not_nil!
    end

    # Implements Seekable

    def self.new_internal(base_stream)
      __return_value = LibGio.data_output_stream_new((base_stream.to_unsafe as LibGio::OutputStream*))
      Gio::DataOutputStream.new(__return_value)
    end

    def byte_order
      __return_value = LibGio.data_output_stream_get_byte_order((to_unsafe as LibGio::DataOutputStream*))
      __return_value
    end

    def put_byte(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_byte((to_unsafe as LibGio::DataOutputStream*), UInt8.new(data), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_int16(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_int16((to_unsafe as LibGio::DataOutputStream*), Int16.new(data), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_int32(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_int32((to_unsafe as LibGio::DataOutputStream*), Int32.new(data), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_int64(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_int64((to_unsafe as LibGio::DataOutputStream*), Int64.new(data), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_string(str, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_string((to_unsafe as LibGio::DataOutputStream*), str, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_uint16(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_uint16((to_unsafe as LibGio::DataOutputStream*), UInt16.new(data), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_uint32(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_uint32((to_unsafe as LibGio::DataOutputStream*), UInt32.new(data), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_uint64(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_uint64((to_unsafe as LibGio::DataOutputStream*), UInt64.new(data), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def byte_order=(order)
      __return_value = LibGio.data_output_stream_set_byte_order((to_unsafe as LibGio::DataOutputStream*), order)
      __return_value
    end

  end
end

