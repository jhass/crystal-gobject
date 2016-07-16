require "./fontset"

module Pango
  class FontsetSimple < Fontset
    @pango_fontset_simple : LibPango::FontsetSimple*?
    def initialize(@pango_fontset_simple : LibPango::FontsetSimple*)
    end

    def to_unsafe
      @pango_fontset_simple.not_nil!.as(Void*)
    end

    def self.new(language) : self
      __return_value = LibPango.fontset_simple_new(language.to_unsafe.as(LibPango::Language*))
      cast Pango::FontsetSimple.new(__return_value)
    end

    def append(font)
      __return_value = LibPango.fontset_simple_append(to_unsafe.as(LibPango::FontsetSimple*), font.to_unsafe.as(LibPango::Font*))
      __return_value
    end

    def size
      __return_value = LibPango.fontset_simple_size(to_unsafe.as(LibPango::FontsetSimple*))
      __return_value
    end

  end
end

