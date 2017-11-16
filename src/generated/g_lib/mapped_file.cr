module GLib
  class MappedFile
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::MappedFile*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::MappedFile*)
    end

    def self.new(filename, writable) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.mapped_file_new(filename.to_unsafe, writable, pointerof(__error))
      GLib::Error.assert __error
      cast GLib::MappedFile.new(__return_value)
    end

    def self.new_from_fd(fd, writable) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.mapped_file_new_from_fd(Int32.new(fd), writable, pointerof(__error))
      GLib::Error.assert __error
      cast GLib::MappedFile.new(__return_value)
    end

    def free
      LibGLib.mapped_file_free(@pointer.as(LibGLib::MappedFile*))
      nil
    end

    def bytes
      __return_value = LibGLib.mapped_file_get_bytes(@pointer.as(LibGLib::MappedFile*))
      GLib::Bytes.new(__return_value)
    end

    def contents
      __return_value = LibGLib.mapped_file_get_contents(@pointer.as(LibGLib::MappedFile*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def length
      __return_value = LibGLib.mapped_file_get_length(@pointer.as(LibGLib::MappedFile*))
      __return_value
    end

    def ref
      __return_value = LibGLib.mapped_file_ref(@pointer.as(LibGLib::MappedFile*))
      GLib::MappedFile.new(__return_value)
    end

    def unref
      LibGLib.mapped_file_unref(@pointer.as(LibGLib::MappedFile*))
      nil
    end

  end
end

