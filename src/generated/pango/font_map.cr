module Pango
  class FontMap < GObject::Object
    def initialize(@pango_font_map)
    end

    def to_unsafe
      @pango_font_map.not_nil!
    end

    def changed
      __return_value = LibPango.font_map_changed((to_unsafe as LibPango::FontMap*))
      __return_value
    end

    def create_context
      __return_value = LibPango.font_map_create_context((to_unsafe as LibPango::FontMap*))
      Pango::Context.new(__return_value)
    end

    def serial
      __return_value = LibPango.font_map_get_serial((to_unsafe as LibPango::FontMap*))
      __return_value
    end

    def shape_engine_type
      __return_value = LibPango.font_map_get_shape_engine_type((to_unsafe as LibPango::FontMap*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def list_families(families, n_families)
      __return_value = LibPango.font_map_list_families((to_unsafe as LibPango::FontMap*), families, Int32.new(n_families))
      __return_value
    end

    def load_font(context, desc)
      __return_value = LibPango.font_map_load_font((to_unsafe as LibPango::FontMap*), (context.to_unsafe as LibPango::Context*), (desc.to_unsafe as LibPango::FontDescription*))
      Pango::Font.new(__return_value) if __return_value
    end

    def load_fontset(context, desc, language)
      __return_value = LibPango.font_map_load_fontset((to_unsafe as LibPango::FontMap*), (context.to_unsafe as LibPango::Context*), (desc.to_unsafe as LibPango::FontDescription*), (language.to_unsafe as LibPango::Language*))
      Pango::Fontset.new(__return_value) if __return_value
    end

  end
end

