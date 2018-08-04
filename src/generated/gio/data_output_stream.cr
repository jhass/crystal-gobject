require "./filter_output_stream"

module Gio
  class DataOutputStream < FilterOutputStream
    @pointer : Void*
    def initialize(pointer : LibGio::DataOutputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DataOutputStream*)
    end

    # Implements Seekable
    def byte_order
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "byte_order", gvalue)
      gvalue.enum
    end

    def self.new(base_stream) : self
      __return_value = LibGio.data_output_stream_new(base_stream.to_unsafe.as(LibGio::OutputStream*))
      cast Gio::DataOutputStream.new(__return_value)
    end

    def byte_order
      __return_value = LibGio.data_output_stream_get_byte_order(@pointer.as(LibGio::DataOutputStream*))
      __return_value
    end

    def put_byte(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_byte(@pointer.as(LibGio::DataOutputStream*), UInt8.new(data), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_int16(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_int16(@pointer.as(LibGio::DataOutputStream*), Int16.new(data), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_int32(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_int32(@pointer.as(LibGio::DataOutputStream*), Int32.new(data), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_int64(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_int64(@pointer.as(LibGio::DataOutputStream*), Int64.new(data), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_string(str, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_string(@pointer.as(LibGio::DataOutputStream*), str.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_uint16(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_uint16(@pointer.as(LibGio::DataOutputStream*), UInt16.new(data), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_uint32(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_uint32(@pointer.as(LibGio::DataOutputStream*), UInt32.new(data), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def put_uint64(data, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_output_stream_put_uint64(@pointer.as(LibGio::DataOutputStream*), UInt64.new(data), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def byte_order=(order : Gio::DataStreamByteOrder)
      LibGio.data_output_stream_set_byte_order(@pointer.as(LibGio::DataOutputStream*), order)
      nil
    end

  end
end

