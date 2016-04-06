module GLib
  class MappedFile
    include GObject::WrappedType

    def initialize(@g_lib_mapped_file)
    end

    def to_unsafe
      @g_lib_mapped_file.not_nil!
    end

    def self.new_internal(filename, writable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.mapped_file_new(filename, writable, pointerof(__error))
      GLib::Error.assert __error
      GLib::MappedFile.new(__return_value)
    end

    def self.new_from_fd(fd, writable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.mapped_file_new_from_fd(Int32.new(fd), writable, pointerof(__error))
      GLib::Error.assert __error
      GLib::MappedFile.new(__return_value)
    end

    def free
      __return_value = LibGLib.mapped_file_free((to_unsafe as LibGLib::MappedFile*))
      __return_value
    end

    def bytes
      __return_value = LibGLib.mapped_file_get_bytes((to_unsafe as LibGLib::MappedFile*))
      GLib::Bytes.new(__return_value)
    end

    def contents
      __return_value = LibGLib.mapped_file_get_contents((to_unsafe as LibGLib::MappedFile*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def length
      __return_value = LibGLib.mapped_file_get_length((to_unsafe as LibGLib::MappedFile*))
      __return_value
    end

    def ref
      __return_value = LibGLib.mapped_file_ref((to_unsafe as LibGLib::MappedFile*))
      GLib::MappedFile.new(__return_value)
    end

    def unref
      __return_value = LibGLib.mapped_file_unref((to_unsafe as LibGLib::MappedFile*))
      __return_value
    end

  end
end

