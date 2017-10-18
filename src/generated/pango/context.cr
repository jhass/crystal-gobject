module Pango
  class Context < GObject::Object
    @pango_context : LibPango::Context*?
    def initialize(@pango_context : LibPango::Context*)
    end

    def to_unsafe
      @pango_context.not_nil!
    end

    def self.new : self
      __return_value = LibPango.context_new
      cast Pango::Context.new(__return_value)
    end

    def changed
      LibPango.context_changed(to_unsafe.as(LibPango::Context*))
      nil
    end

    def base_dir
      __return_value = LibPango.context_get_base_dir(to_unsafe.as(LibPango::Context*))
      __return_value
    end

    def base_gravity
      __return_value = LibPango.context_get_base_gravity(to_unsafe.as(LibPango::Context*))
      __return_value
    end

    def font_description
      __return_value = LibPango.context_get_font_description(to_unsafe.as(LibPango::Context*))
      Pango::FontDescription.new(__return_value)
    end

    def font_map
      __return_value = LibPango.context_get_font_map(to_unsafe.as(LibPango::Context*))
      Pango::FontMap.new(__return_value)
    end

    def gravity
      __return_value = LibPango.context_get_gravity(to_unsafe.as(LibPango::Context*))
      __return_value
    end

    def gravity_hint
      __return_value = LibPango.context_get_gravity_hint(to_unsafe.as(LibPango::Context*))
      __return_value
    end

    def language
      __return_value = LibPango.context_get_language(to_unsafe.as(LibPango::Context*))
      Pango::Language.new(__return_value)
    end

    def matrix
      __return_value = LibPango.context_get_matrix(to_unsafe.as(LibPango::Context*))
      Pango::Matrix.new(__return_value) if __return_value
    end

    def metrics(desc, language)
      __return_value = LibPango.context_get_metrics(to_unsafe.as(LibPango::Context*), desc ? desc.to_unsafe.as(LibPango::FontDescription*) : nil, language ? language.to_unsafe.as(LibPango::Language*) : nil)
      Pango::FontMetrics.new(__return_value)
    end

    def serial
      __return_value = LibPango.context_get_serial(to_unsafe.as(LibPango::Context*))
      __return_value
    end

    def list_families(families, n_families)
      LibPango.context_list_families(to_unsafe.as(LibPango::Context*), families, n_families)
      nil
    end

    def load_font(desc)
      __return_value = LibPango.context_load_font(to_unsafe.as(LibPango::Context*), desc.to_unsafe.as(LibPango::FontDescription*))
      Pango::Font.new(__return_value) if __return_value
    end

    def load_fontset(desc, language)
      __return_value = LibPango.context_load_fontset(to_unsafe.as(LibPango::Context*), desc.to_unsafe.as(LibPango::FontDescription*), language.to_unsafe.as(LibPango::Language*))
      Pango::Fontset.new(__return_value) if __return_value
    end

    def base_dir=(direction : Pango::Direction)
      LibPango.context_set_base_dir(to_unsafe.as(LibPango::Context*), direction)
      nil
    end

    def base_gravity=(gravity : Pango::Gravity)
      LibPango.context_set_base_gravity(to_unsafe.as(LibPango::Context*), gravity)
      nil
    end

    def font_description=(desc)
      LibPango.context_set_font_description(to_unsafe.as(LibPango::Context*), desc.to_unsafe.as(LibPango::FontDescription*))
      nil
    end

    def font_map=(font_map)
      LibPango.context_set_font_map(to_unsafe.as(LibPango::Context*), font_map.to_unsafe.as(LibPango::FontMap*))
      nil
    end

    def gravity_hint=(hint : Pango::GravityHint)
      LibPango.context_set_gravity_hint(to_unsafe.as(LibPango::Context*), hint)
      nil
    end

    def language=(language)
      LibPango.context_set_language(to_unsafe.as(LibPango::Context*), language.to_unsafe.as(LibPango::Language*))
      nil
    end

    def matrix=(matrix)
      LibPango.context_set_matrix(to_unsafe.as(LibPango::Context*), matrix ? matrix.to_unsafe.as(LibPango::Matrix*) : nil)
      nil
    end

  end
end

