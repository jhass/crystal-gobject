module Pango
  class Context < GObject::Object
    def initialize(@pango_context)
    end

    def to_unsafe
      @pango_context.not_nil!
    end

    def self.new_internal
      __return_value = LibPango.context_new
      Pango::Context.new(__return_value)
    end

    def changed
      __return_value = LibPango.context_changed((to_unsafe as LibPango::Context*))
      __return_value
    end

    def base_dir
      __return_value = LibPango.context_get_base_dir((to_unsafe as LibPango::Context*))
      __return_value
    end

    def base_gravity
      __return_value = LibPango.context_get_base_gravity((to_unsafe as LibPango::Context*))
      __return_value
    end

    def font_description
      __return_value = LibPango.context_get_font_description((to_unsafe as LibPango::Context*))
      Pango::FontDescription.new(__return_value)
    end

    def font_map
      __return_value = LibPango.context_get_font_map((to_unsafe as LibPango::Context*))
      Pango::FontMap.new(__return_value)
    end

    def gravity
      __return_value = LibPango.context_get_gravity((to_unsafe as LibPango::Context*))
      __return_value
    end

    def gravity_hint
      __return_value = LibPango.context_get_gravity_hint((to_unsafe as LibPango::Context*))
      __return_value
    end

    def language
      __return_value = LibPango.context_get_language((to_unsafe as LibPango::Context*))
      Pango::Language.new(__return_value)
    end

    def matrix
      __return_value = LibPango.context_get_matrix((to_unsafe as LibPango::Context*))
      Pango::Matrix.new(__return_value) if __return_value
    end

    def metrics(desc, language)
      __return_value = LibPango.context_get_metrics((to_unsafe as LibPango::Context*), desc && (desc.to_unsafe as LibPango::FontDescription*), language && (language.to_unsafe as LibPango::Language*))
      Pango::FontMetrics.new(__return_value)
    end

    def serial
      __return_value = LibPango.context_get_serial((to_unsafe as LibPango::Context*))
      __return_value
    end

    def list_families(families, n_families)
      __return_value = LibPango.context_list_families((to_unsafe as LibPango::Context*), families, Int32.new(n_families))
      __return_value
    end

    def load_font(desc)
      __return_value = LibPango.context_load_font((to_unsafe as LibPango::Context*), (desc.to_unsafe as LibPango::FontDescription*))
      Pango::Font.new(__return_value) if __return_value
    end

    def load_fontset(desc, language)
      __return_value = LibPango.context_load_fontset((to_unsafe as LibPango::Context*), (desc.to_unsafe as LibPango::FontDescription*), (language.to_unsafe as LibPango::Language*))
      Pango::Fontset.new(__return_value) if __return_value
    end

    def base_dir=(direction)
      __return_value = LibPango.context_set_base_dir((to_unsafe as LibPango::Context*), direction)
      __return_value
    end

    def base_gravity=(gravity)
      __return_value = LibPango.context_set_base_gravity((to_unsafe as LibPango::Context*), gravity)
      __return_value
    end

    def font_description=(desc)
      __return_value = LibPango.context_set_font_description((to_unsafe as LibPango::Context*), (desc.to_unsafe as LibPango::FontDescription*))
      __return_value
    end

    def font_map=(font_map)
      __return_value = LibPango.context_set_font_map((to_unsafe as LibPango::Context*), (font_map.to_unsafe as LibPango::FontMap*))
      __return_value
    end

    def gravity_hint=(hint)
      __return_value = LibPango.context_set_gravity_hint((to_unsafe as LibPango::Context*), hint)
      __return_value
    end

    def language=(language)
      __return_value = LibPango.context_set_language((to_unsafe as LibPango::Context*), (language.to_unsafe as LibPango::Language*))
      __return_value
    end

    def matrix=(matrix)
      __return_value = LibPango.context_set_matrix((to_unsafe as LibPango::Context*), matrix && (matrix.to_unsafe as LibPango::Matrix*))
      __return_value
    end

  end
end

