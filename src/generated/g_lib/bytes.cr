module GLib
  class Bytes
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::Bytes*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Bytes*)
    end

    def self.new(data, size) : self
      __return_value = LibGLib.bytes_new(data ? data : nil, UInt64.new(size))
      cast GLib::Bytes.new(__return_value)
    end

    def self.new_take(data, size) : self
      __return_value = LibGLib.bytes_new_take(data ? data : nil, UInt64.new(size))
      cast GLib::Bytes.new(__return_value)
    end

    def compare(bytes2)
      __return_value = LibGLib.bytes_compare(@pointer.as(LibGLib::Bytes*), bytes2.to_unsafe.as(LibGLib::Bytes*))
      __return_value
    end

    def equal(bytes2)
      __return_value = LibGLib.bytes_equal(@pointer.as(LibGLib::Bytes*), bytes2.to_unsafe.as(LibGLib::Bytes*))
      __return_value
    end

    def data(size)
      __return_value = LibGLib.bytes_get_data(@pointer.as(LibGLib::Bytes*), size)
      PointerIterator.new(__return_value) {|__item| __item } if __return_value
    end

    def size
      __return_value = LibGLib.bytes_get_size(@pointer.as(LibGLib::Bytes*))
      __return_value
    end

    def hash
      __return_value = LibGLib.bytes_hash(@pointer.as(LibGLib::Bytes*))
      __return_value
    end

    def new_from_bytes(offset, length)
      __return_value = LibGLib.bytes_new_from_bytes(@pointer.as(LibGLib::Bytes*), UInt64.new(offset), UInt64.new(length))
      GLib::Bytes.new(__return_value)
    end

    def ref
      __return_value = LibGLib.bytes_ref(@pointer.as(LibGLib::Bytes*))
      GLib::Bytes.new(__return_value)
    end

    def unref
      LibGLib.bytes_unref(@pointer.as(LibGLib::Bytes*))
      nil
    end

    def unref_to_array
      __return_value = LibGLib.bytes_unref_to_array(@pointer.as(LibGLib::Bytes*))
      __return_value
    end

    def unref_to_data(size)
      __return_value = LibGLib.bytes_unref_to_data(@pointer.as(LibGLib::Bytes*), size)
      PointerIterator.new(__return_value) {|__item| __item }
    end

  end
end

