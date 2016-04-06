module GLib
  class Dir
    include GObject::WrappedType

    def initialize(@g_lib_dir)
    end

    def to_unsafe
      @g_lib_dir.not_nil!
    end

    def close
      __return_value = LibGLib.dir_close((to_unsafe as LibGLib::Dir*))
      __return_value
    end

    def read_name
      __return_value = LibGLib.dir_read_name((to_unsafe as LibGLib::Dir*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def rewind
      __return_value = LibGLib.dir_rewind((to_unsafe as LibGLib::Dir*))
      __return_value
    end

    def self.make_tmp(tmpl)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.dir_make_tmp(tmpl && tmpl, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

  end
end

