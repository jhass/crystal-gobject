module Pango
  class Context < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibPango::Context*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::Context*)
    end

    def self.new : self
      __return_value = LibPango.context_new
      cast Pango::Context.new(__return_value)
    end

    def changed
      LibPango.context_changed(@pointer.as(LibPango::Context*))
      nil
    end

    def base_dir
      __return_value = LibPango.context_get_base_dir(@pointer.as(LibPango::Context*))
      __return_value
    end

    def base_gravity
      __return_value = LibPango.context_get_base_gravity(@pointer.as(LibPango::Context*))
      __return_value
    end

    def font_description
      __return_value = LibPango.context_get_font_description(@pointer.as(LibPango::Context*))
      Pango::FontDescription.new(__return_value)
    end

    def font_map
      __return_value = LibPango.context_get_font_map(@pointer.as(LibPango::Context*))
      Pango::FontMap.new(__return_value)
    end

    def gravity
      __return_value = LibPango.context_get_gravity(@pointer.as(LibPango::Context*))
      __return_value
    end

    def gravity_hint
      __return_value = LibPango.context_get_gravity_hint(@pointer.as(LibPango::Context*))
      __return_value
    end

    def language
      __return_value = LibPango.context_get_language(@pointer.as(LibPango::Context*))
      Pango::Language.new(__return_value)
    end

    def matrix
      __return_value = LibPango.context_get_matrix(@pointer.as(LibPango::Context*))
      Pango::Matrix.new(__return_value) if __return_value
    end

    def metrics(desc, language)
      __return_value = LibPango.context_get_metrics(@pointer.as(LibPango::Context*), desc ? desc.to_unsafe.as(LibPango::FontDescription*) : nil, language ? language.to_unsafe.as(LibPango::Language*) : nil)
      Pango::FontMetrics.new(__return_value)
    end

    def serial
      __return_value = LibPango.context_get_serial(@pointer.as(LibPango::Context*))
      __return_value
    end

    def list_families(families, n_families)
      LibPango.context_list_families(@pointer.as(LibPango::Context*), families, n_families)
      nil
    end

    def load_font(desc)
      __return_value = LibPango.context_load_font(@pointer.as(LibPango::Context*), desc.to_unsafe.as(LibPango::FontDescription*))
      Pango::Font.new(__return_value) if __return_value
    end

    def load_fontset(desc, language)
      __return_value = LibPango.context_load_fontset(@pointer.as(LibPango::Context*), desc.to_unsafe.as(LibPango::FontDescription*), language.to_unsafe.as(LibPango::Language*))
      Pango::Fontset.new(__return_value) if __return_value
    end

    def base_dir=(direction : Pango::Direction)
      LibPango.context_set_base_dir(@pointer.as(LibPango::Context*), direction)
      nil
    end

    def base_gravity=(gravity : Pango::Gravity)
      LibPango.context_set_base_gravity(@pointer.as(LibPango::Context*), gravity)
      nil
    end

    def font_description=(desc)
      LibPango.context_set_font_description(@pointer.as(LibPango::Context*), desc.to_unsafe.as(LibPango::FontDescription*))
      nil
    end

    def font_map=(font_map)
      LibPango.context_set_font_map(@pointer.as(LibPango::Context*), font_map.to_unsafe.as(LibPango::FontMap*))
      nil
    end

    def gravity_hint=(hint : Pango::GravityHint)
      LibPango.context_set_gravity_hint(@pointer.as(LibPango::Context*), hint)
      nil
    end

    def language=(language)
      LibPango.context_set_language(@pointer.as(LibPango::Context*), language.to_unsafe.as(LibPango::Language*))
      nil
    end

    def matrix=(matrix)
      LibPango.context_set_matrix(@pointer.as(LibPango::Context*), matrix ? matrix.to_unsafe.as(LibPango::Matrix*) : nil)
      nil
    end

  end
end

