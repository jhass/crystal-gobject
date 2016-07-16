module Pango
  class GlyphInfo
    include GObject::WrappedType

    def self.new(glyph : UInt32|Nil = nil, geometry : Pango::GlyphGeometry|Nil = nil, attr : Pango::GlyphVisAttr|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(20, 0u8)
      new(ptr.as(LibPango::GlyphInfo*)).tap do |object|
        object.glyph = glyph unless glyph.nil?
        object.geometry = geometry unless geometry.nil?
        object.attr = attr unless attr.nil?
      end
    end

    @pango_glyph_info : LibPango::GlyphInfo*?
    def initialize(@pango_glyph_info : LibPango::GlyphInfo*)
    end

    def to_unsafe
      @pango_glyph_info.not_nil!.as(Void*)
    end

    def glyph
      (to_unsafe.as(LibPango::GlyphInfo*).value.glyph)
    end

    def glyph=(value : UInt32)
      to_unsafe.as(LibPango::GlyphInfo*).value.glyph = UInt32.new(value)
    end

    def geometry
      Pango::GlyphGeometry.new((to_unsafe.as(LibPango::GlyphInfo*).value.geometry))
    end

    def geometry=(value : Pango::GlyphGeometry)
      to_unsafe.as(LibPango::GlyphInfo*).value.geometry = value
    end

    def attr
      Pango::GlyphVisAttr.new((to_unsafe.as(LibPango::GlyphInfo*).value.attr))
    end

    def attr=(value : Pango::GlyphVisAttr)
      to_unsafe.as(LibPango::GlyphInfo*).value.attr = value
    end

  end
end

