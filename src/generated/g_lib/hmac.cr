module GLib
  class Hmac
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::Hmac*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Hmac*)
    end

    def digest(buffer, digest_len)
      LibGLib.hmac_get_digest(@pointer.as(LibGLib::Hmac*), buffer, digest_len)
      nil
    end

    def string
      __return_value = LibGLib.hmac_get_string(@pointer.as(LibGLib::Hmac*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def unref
      LibGLib.hmac_unref(@pointer.as(LibGLib::Hmac*))
      nil
    end

    def update(data, length)
      LibGLib.hmac_update(@pointer.as(LibGLib::Hmac*), data, Int64.new(length))
      nil
    end

  end
end

