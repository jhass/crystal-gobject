module Gio
  class CharsetConverter < GObject::Object
    def initialize(@gio_charset_converter)
    end

    def to_unsafe
      @gio_charset_converter.not_nil!
    end

    # Implements Converter
    # Implements Initable



    def self.new_internal(to_charset, from_charset)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.charset_converter_new(to_charset, from_charset, pointerof(__error))
      GLib::Error.assert __error
      Gio::CharsetConverter.new(__return_value)
    end

    def num_fallbacks
      __return_value = LibGio.charset_converter_get_num_fallbacks((to_unsafe as LibGio::CharsetConverter*))
      __return_value
    end

    def use_fallback
      __return_value = LibGio.charset_converter_get_use_fallback((to_unsafe as LibGio::CharsetConverter*))
      __return_value
    end

    def use_fallback=(use_fallback)
      __return_value = LibGio.charset_converter_set_use_fallback((to_unsafe as LibGio::CharsetConverter*), use_fallback)
      __return_value
    end

  end
end

