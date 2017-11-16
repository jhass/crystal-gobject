module Pango
  class FontMap < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibPango::FontMap*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::FontMap*)
    end

    def changed
      LibPango.font_map_changed(@pointer.as(LibPango::FontMap*))
      nil
    end

    def create_context
      __return_value = LibPango.font_map_create_context(@pointer.as(LibPango::FontMap*))
      Pango::Context.new(__return_value)
    end

    def serial
      __return_value = LibPango.font_map_get_serial(@pointer.as(LibPango::FontMap*))
      __return_value
    end

    def shape_engine_type
      __return_value = LibPango.font_map_get_shape_engine_type(@pointer.as(LibPango::FontMap*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def list_families(families, n_families)
      LibPango.font_map_list_families(@pointer.as(LibPango::FontMap*), families, n_families)
      nil
    end

    def load_font(context, desc)
      __return_value = LibPango.font_map_load_font(@pointer.as(LibPango::FontMap*), context.to_unsafe.as(LibPango::Context*), desc.to_unsafe.as(LibPango::FontDescription*))
      Pango::Font.new(__return_value) if __return_value
    end

    def load_fontset(context, desc, language)
      __return_value = LibPango.font_map_load_fontset(@pointer.as(LibPango::FontMap*), context.to_unsafe.as(LibPango::Context*), desc.to_unsafe.as(LibPango::FontDescription*), language.to_unsafe.as(LibPango::Language*))
      Pango::Fontset.new(__return_value) if __return_value
    end

  end
end

