module GLib
  class Checksum
    include GObject::WrappedType

    def initialize(@g_lib_checksum)
    end

    def to_unsafe
      @g_lib_checksum.not_nil!
    end

    def self.new_internal(checksum_type)
      __return_value = LibGLib.checksum_new(checksum_type)
      GLib::Checksum.new(__return_value)
    end

    def copy
      __return_value = LibGLib.checksum_copy((to_unsafe as LibGLib::Checksum*))
      GLib::Checksum.new(__return_value)
    end

    def free
      __return_value = LibGLib.checksum_free((to_unsafe as LibGLib::Checksum*))
      __return_value
    end

    def string
      __return_value = LibGLib.checksum_get_string((to_unsafe as LibGLib::Checksum*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def reset
      __return_value = LibGLib.checksum_reset((to_unsafe as LibGLib::Checksum*))
      __return_value
    end

    def update(data, length)
      __return_value = LibGLib.checksum_update((to_unsafe as LibGLib::Checksum*), data, Int64.new(length))
      __return_value
    end

    def self.type_get_length(checksum_type)
      __return_value = LibGLib.checksum_type_get_length(checksum_type)
      __return_value
    end

  end
end

