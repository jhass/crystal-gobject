module Pango
  class GlyphGeometry
    include GObject::WrappedType

    def self.new(width : Int32|Nil = nil, x_offset : Int32|Nil = nil, y_offset : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(12, 0u8)
      new(ptr.as(LibPango::GlyphGeometry*)).tap do |object|
        object.width = width unless width.nil?
        object.x_offset = x_offset unless x_offset.nil?
        object.y_offset = y_offset unless y_offset.nil?
      end
    end

    @pango_glyph_geometry : LibPango::GlyphGeometry*?
    def initialize(@pango_glyph_geometry : LibPango::GlyphGeometry*)
    end

    def to_unsafe
      @pango_glyph_geometry.not_nil!
    end

    def width
      (to_unsafe.as(LibPango::GlyphGeometry*).value.width)
    end

    def width=(value : Int32)
      to_unsafe.as(LibPango::GlyphGeometry*).value.width = Int32.new(value)
    end

    def x_offset
      (to_unsafe.as(LibPango::GlyphGeometry*).value.x_offset)
    end

    def x_offset=(value : Int32)
      to_unsafe.as(LibPango::GlyphGeometry*).value.x_offset = Int32.new(value)
    end

    def y_offset
      (to_unsafe.as(LibPango::GlyphGeometry*).value.y_offset)
    end

    def y_offset=(value : Int32)
      to_unsafe.as(LibPango::GlyphGeometry*).value.y_offset = Int32.new(value)
    end

  end
end

