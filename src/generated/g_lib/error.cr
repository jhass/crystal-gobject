module GLib
  class Error
    include GObject::WrappedType

    def initialize @g_lib_error
    end

    def to_unsafe
      @g_lib_error.not_nil!
    end

    def self.new_literal(domain, code, message)
      __return_value = LibGLib.error_new_literal(UInt32.cast(domain), Int32.cast(code), message)
      __return_value
    end

    def copy
      __return_value = LibGLib.error_copy((to_unsafe as LibGLib::Error*))
      __return_value
    end

    def free
      __return_value = LibGLib.error_free((to_unsafe as LibGLib::Error*))
      __return_value
    end

    def matches(domain, code)
      __return_value = LibGLib.error_matches((to_unsafe as LibGLib::Error*), UInt32.cast(domain), Int32.cast(code))
      __return_value
    end

  end
end

