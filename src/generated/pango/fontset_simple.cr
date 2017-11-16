require "./fontset"

module Pango
  class FontsetSimple < Fontset
    @pointer : Void*
    def initialize(pointer : LibPango::FontsetSimple*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::FontsetSimple*)
    end

    def self.new(language) : self
      __return_value = LibPango.fontset_simple_new(language.to_unsafe.as(LibPango::Language*))
      cast Pango::FontsetSimple.new(__return_value)
    end

    def append(font)
      LibPango.fontset_simple_append(@pointer.as(LibPango::FontsetSimple*), font.to_unsafe.as(LibPango::Font*))
      nil
    end

    def size
      __return_value = LibPango.fontset_simple_size(@pointer.as(LibPango::FontsetSimple*))
      __return_value
    end

  end
end

