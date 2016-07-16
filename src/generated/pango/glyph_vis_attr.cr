module Pango
  class GlyphVisAttr
    include GObject::WrappedType

    def self.new(is_cluster_start : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(4, 0u8)
      new(ptr.as(LibPango::GlyphVisAttr*)).tap do |object|
        object.is_cluster_start = is_cluster_start unless is_cluster_start.nil?
      end
    end

    @pango_glyph_vis_attr : LibPango::GlyphVisAttr*?
    def initialize(@pango_glyph_vis_attr : LibPango::GlyphVisAttr*)
    end

    def to_unsafe
      @pango_glyph_vis_attr.not_nil!
    end

    def is_cluster_start
      (to_unsafe.value.is_cluster_start)
    end

    def is_cluster_start=(value : UInt32)
      to_unsafe.value.is_cluster_start = UInt32.new(value)
    end

  end
end

