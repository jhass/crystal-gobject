module GLib
  class Checksum
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::Checksum*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Checksum*)
    end

    def self.new(checksum_type : GLib::ChecksumType) : self
      __return_value = LibGLib.checksum_new(checksum_type)
      cast GLib::Checksum.new(__return_value)
    end

    def copy
      __return_value = LibGLib.checksum_copy(@pointer.as(LibGLib::Checksum*))
      GLib::Checksum.new(__return_value)
    end

    def free
      LibGLib.checksum_free(@pointer.as(LibGLib::Checksum*))
      nil
    end

    def string
      __return_value = LibGLib.checksum_get_string(@pointer.as(LibGLib::Checksum*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def reset
      LibGLib.checksum_reset(@pointer.as(LibGLib::Checksum*))
      nil
    end

    def update(data, length)
      LibGLib.checksum_update(@pointer.as(LibGLib::Checksum*), data, Int64.new(length))
      nil
    end

    def self.type_get_length(checksum_type : GLib::ChecksumType)
      __return_value = LibGLib.checksum_type_get_length(checksum_type)
      __return_value
    end

  end
end

