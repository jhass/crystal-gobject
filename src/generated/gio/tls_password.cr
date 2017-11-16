module Gio
  class TlsPassword < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::TlsPassword*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TlsPassword*)
    end

    def description
      __return_value = LibGio.tls_password_get_description(to_unsafe.as(LibGio::TlsPassword*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def flags
      __return_value = LibGio.tls_password_get_flags(to_unsafe.as(LibGio::TlsPassword*))
      __return_value
    end

    def warning
      __return_value = LibGio.tls_password_get_warning(to_unsafe.as(LibGio::TlsPassword*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new(flags : Gio::TlsPasswordFlags, description) : self
      __return_value = LibGio.tls_password_new(flags, description.to_unsafe)
      cast Gio::TlsPassword.new(__return_value)
    end

    def description
      __return_value = LibGio.tls_password_get_description(@pointer.as(LibGio::TlsPassword*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def flags
      __return_value = LibGio.tls_password_get_flags(@pointer.as(LibGio::TlsPassword*))
      __return_value
    end

    def value(length)
      __return_value = LibGio.tls_password_get_value(@pointer.as(LibGio::TlsPassword*), length ? length : nil)
      __return_value
    end

    def warning
      __return_value = LibGio.tls_password_get_warning(@pointer.as(LibGio::TlsPassword*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def description=(description)
      LibGio.tls_password_set_description(@pointer.as(LibGio::TlsPassword*), description.to_unsafe)
      nil
    end

    def flags=(flags : Gio::TlsPasswordFlags)
      LibGio.tls_password_set_flags(@pointer.as(LibGio::TlsPassword*), flags)
      nil
    end

    def set_value(value, length)
      LibGio.tls_password_set_value(@pointer.as(LibGio::TlsPassword*), value, Int64.new(length))
      nil
    end

    def set_value_full(value, length, destroy)
      LibGio.tls_password_set_value_full(@pointer.as(LibGio::TlsPassword*), value, Int64.new(length), destroy ? destroy : nil)
      nil
    end

    def warning=(warning)
      LibGio.tls_password_set_warning(@pointer.as(LibGio::TlsPassword*), warning.to_unsafe)
      nil
    end

  end
end

