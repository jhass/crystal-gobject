module GLib
  class ByteArray
    include GObject::WrappedType

    def self.new(data : UInt8|Nil = nil, len : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGLib::ByteArray*)).tap do |object|
        object.data = data unless data.nil?
        object.len = len unless len.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::ByteArray*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::ByteArray*)
    end

    def self.free(array, free_segment)
      __return_value = LibGLib.byte_array_free(array, free_segment)
      __return_value
    end

    def self.free_to_bytes(array)
      __return_value = LibGLib.byte_array_free_to_bytes(array)
      GLib::Bytes.new(__return_value)
    end

    def self.new
      __return_value = LibGLib.byte_array_new
      __return_value
    end

    def self.new_take(data, len)
      __return_value = LibGLib.byte_array_new_take(data, UInt64.new(len))
      __return_value
    end

    def self.unref(array)
      LibGLib.byte_array_unref(array)
      nil
    end

    def data
      (to_unsafe.as(LibGLib::ByteArray*).value.data)
    end

    def data=(value : UInt8)
      to_unsafe.as(LibGLib::ByteArray*).value.data = value
    end

    def len
      (to_unsafe.as(LibGLib::ByteArray*).value.len)
    end

    def len=(value : UInt32)
      to_unsafe.as(LibGLib::ByteArray*).value.len = UInt32.new(value)
    end

  end
end

