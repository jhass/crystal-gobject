module Gio
  class CharsetConverter < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::CharsetConverter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::CharsetConverter*)
    end

    # Implements Converter
    # Implements Initable
    def from_charset
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "from_charset", gvalue)
      gvalue.string
    end

    def to_charset
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "to_charset", gvalue)
      gvalue.string
    end

    def use_fallback
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "use_fallback", gvalue)
      gvalue.boolean
    end

    def self.new(to_charset, from_charset) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.charset_converter_new(to_charset.to_unsafe, from_charset.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::CharsetConverter.new(__return_value)
    end

    def num_fallbacks
      __return_value = LibGio.charset_converter_get_num_fallbacks(@pointer.as(LibGio::CharsetConverter*))
      __return_value
    end

    def use_fallback
      __return_value = LibGio.charset_converter_get_use_fallback(@pointer.as(LibGio::CharsetConverter*))
      __return_value
    end

    def use_fallback=(use_fallback)
      LibGio.charset_converter_set_use_fallback(@pointer.as(LibGio::CharsetConverter*), use_fallback)
      nil
    end

  end
end

