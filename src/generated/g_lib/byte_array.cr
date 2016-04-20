module GLib
  class ByteArray
    include GObject::WrappedType

    @g_lib_byte_array : LibGLib::ByteArray*?
    def initialize(@g_lib_byte_array : LibGLib::ByteArray*)
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

    def self.new
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

