module GLib
  class Hmac
    include GObject::WrappedType

    def initialize(@g_lib_hmac)
    end

    def to_unsafe
      @g_lib_hmac.not_nil!
    end

    def digest(buffer, digest_len)
      __return_value = LibGLib.hmac_get_digest((to_unsafe as LibGLib::Hmac*), buffer, digest_len)
      __return_value
    end

    def string
      __return_value = LibGLib.hmac_get_string((to_unsafe as LibGLib::Hmac*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def unref
      __return_value = LibGLib.hmac_unref((to_unsafe as LibGLib::Hmac*))
      __return_value
    end

    def update(data, length)
      __return_value = LibGLib.hmac_update((to_unsafe as LibGLib::Hmac*), data, Int64.new(length))
      __return_value
    end

  end
end

