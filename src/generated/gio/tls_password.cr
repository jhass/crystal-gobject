module Gio
  class TlsPassword < GObject::Object
    def initialize(@gio_tls_password)
    end

    def to_unsafe
      @gio_tls_password.not_nil!
    end




    def self.new_internal(flags, description)
      __return_value = LibGio.tls_password_new(flags, description)
      Gio::TlsPassword.new(__return_value)
    end

    def description
      __return_value = LibGio.tls_password_get_description((to_unsafe as LibGio::TlsPassword*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def flags
      __return_value = LibGio.tls_password_get_flags((to_unsafe as LibGio::TlsPassword*))
      __return_value
    end

    def value(length)
      __return_value = LibGio.tls_password_get_value((to_unsafe as LibGio::TlsPassword*), length && length)
      __return_value
    end

    def warning
      __return_value = LibGio.tls_password_get_warning((to_unsafe as LibGio::TlsPassword*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def description=(description)
      __return_value = LibGio.tls_password_set_description((to_unsafe as LibGio::TlsPassword*), description)
      __return_value
    end

    def flags=(flags)
      __return_value = LibGio.tls_password_set_flags((to_unsafe as LibGio::TlsPassword*), flags)
      __return_value
    end

    def set_value(value, length)
      __return_value = LibGio.tls_password_set_value((to_unsafe as LibGio::TlsPassword*), value, Int64.new(length))
      __return_value
    end

    def set_value_full(value, length, destroy : LibGLib::DestroyNotify?)
      __return_value = LibGio.tls_password_set_value_full((to_unsafe as LibGio::TlsPassword*), value, Int64.new(length), destroy && destroy)
      __return_value
    end

    def warning=(warning)
      __return_value = LibGio.tls_password_set_warning((to_unsafe as LibGio::TlsPassword*), warning)
      __return_value
    end

  end
end

