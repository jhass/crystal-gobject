module GLib
  class Hmac
    include GObject::WrappedType

    @g_lib_hmac : LibGLib::Hmac*?
    def initialize(@g_lib_hmac : LibGLib::Hmac*)
    end

    def to_unsafe
      @g_lib_hmac.not_nil!
    end

    def digest(buffer, digest_len)
      LibGLib.hmac_get_digest(to_unsafe.as(LibGLib::Hmac*), buffer, digest_len)
      nil
    end

    def string
      __return_value = LibGLib.hmac_get_string(to_unsafe.as(LibGLib::Hmac*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def unref
      LibGLib.hmac_unref(to_unsafe.as(LibGLib::Hmac*))
      nil
    end

    def update(data, length)
      LibGLib.hmac_update(to_unsafe.as(LibGLib::Hmac*), data, Int64.new(length))
      nil
    end

  end
end

