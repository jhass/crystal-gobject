module GLib
  class ByteArray
    include GObject::WrappedType

    def initialize(@g_lib_byte_array)
    end

    def to_unsafe
      @g_lib_byte_array.not_nil!
    end

    def self.free(array, free_segment)
      __return_value = LibGLib.byte_array_free(array, free_segment)
      __return_value
    end

    def self.free_to_bytes(array)
      __return_value = LibGLib.byte_array_free_to_bytes(array)
      GLib::Bytes.new(__return_value)
    end

    def self.new_internal
      __return_value = LibGLib.byte_array_new
      __return_value
    end

    def self.new_take(data, len)
      __return_value = LibGLib.byte_array_new_take(data, UInt64.new(len))
      __return_value
    end

    def self.unref(array)
      __return_value = LibGLib.byte_array_unref(array)
      __return_value
    end

  end
end

