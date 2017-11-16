module Gio
  class Credentials < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::Credentials*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::Credentials*)
    end

    def self.new : self
      __return_value = LibGio.credentials_new
      cast Gio::Credentials.new(__return_value)
    end

    def unix_pid
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.credentials_get_unix_pid(@pointer.as(LibGio::Credentials*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def unix_user
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.credentials_get_unix_user(@pointer.as(LibGio::Credentials*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def same_user?(other_credentials)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.credentials_is_same_user(@pointer.as(LibGio::Credentials*), other_credentials.to_unsafe.as(LibGio::Credentials*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_native(native_type : Gio::CredentialsType, native)
      LibGio.credentials_set_native(@pointer.as(LibGio::Credentials*), native_type, native)
      nil
    end

    def set_unix_user(uid)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.credentials_set_unix_user(@pointer.as(LibGio::Credentials*), UInt32.new(uid), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def to_string
      __return_value = LibGio.credentials_to_string(@pointer.as(LibGio::Credentials*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

