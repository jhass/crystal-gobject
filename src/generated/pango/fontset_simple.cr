require "./fontset"

module Pango
  class FontsetSimple < Fontset
    def initialize(@pango_fontset_simple)
    end

    def to_unsafe
      @pango_fontset_simple.not_nil!
    end

    def self.new_internal(language)
      __return_value = LibPango.fontset_simple_new((language.to_unsafe as LibPango::Language*))
      Pango::FontsetSimple.new(__return_value)
    end

    def append(font)
      __return_value = LibPango.fontset_simple_append((to_unsafe as LibPango::FontsetSimple*), (font.to_unsafe as LibPango::Font*))
      __return_value
    end

    def size
      __return_value = LibPango.fontset_simple_size((to_unsafe as LibPango::FontsetSimple*))
      __return_value
    end

  end
end

