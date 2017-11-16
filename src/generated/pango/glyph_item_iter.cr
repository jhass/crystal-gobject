module Pango
  class GlyphItemIter
    include GObject::WrappedType

    def self.new(glyph_item : Pango::GlyphItem|Nil = nil, text : String|Nil = nil, start_glyph : Int32|Nil = nil, start_index : Int32|Nil = nil, start_char : Int32|Nil = nil, end_glyph : Int32|Nil = nil, end_index : Int32|Nil = nil, end_char : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibPango::GlyphItemIter*)).tap do |object|
        object.glyph_item = glyph_item unless glyph_item.nil?
        object.text = text unless text.nil?
        object.start_glyph = start_glyph unless start_glyph.nil?
        object.start_index = start_index unless start_index.nil?
        object.start_char = start_char unless start_char.nil?
        object.end_glyph = end_glyph unless end_glyph.nil?
        object.end_index = end_index unless end_index.nil?
        object.end_char = end_char unless end_char.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibPango::GlyphItemIter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::GlyphItemIter*)
    end

    def copy
      __return_value = LibPango.glyph_item_iter_copy(@pointer.as(LibPango::GlyphItemIter*))
      Pango::GlyphItemIter.new(__return_value) if __return_value
    end

    def free
      LibPango.glyph_item_iter_free(@pointer.as(LibPango::GlyphItemIter*))
      nil
    end

    def init_end(glyph_item, text)
      __return_value = LibPango.glyph_item_iter_init_end(@pointer.as(LibPango::GlyphItemIter*), glyph_item.to_unsafe.as(LibPango::GlyphItem*), text.to_unsafe)
      __return_value
    end

    def init_start(glyph_item, text)
      __return_value = LibPango.glyph_item_iter_init_start(@pointer.as(LibPango::GlyphItemIter*), glyph_item.to_unsafe.as(LibPango::GlyphItem*), text.to_unsafe)
      __return_value
    end

    def next_cluster
      __return_value = LibPango.glyph_item_iter_next_cluster(@pointer.as(LibPango::GlyphItemIter*))
      __return_value
    end

    def prev_cluster
      __return_value = LibPango.glyph_item_iter_prev_cluster(@pointer.as(LibPango::GlyphItemIter*))
      __return_value
    end

    def glyph_item
      Pango::GlyphItem.new((to_unsafe.as(LibPango::GlyphItemIter*).value.glyph_item))
    end

    def glyph_item=(value : Pango::GlyphItem)
      to_unsafe.as(LibPango::GlyphItemIter*).value.glyph_item = value.to_unsafe.as(LibPango::GlyphItem*)
    end

    def text
      (raise "Expected string but got null" unless (to_unsafe.as(LibPango::GlyphItemIter*).value.text); ::String.new((to_unsafe.as(LibPango::GlyphItemIter*).value.text)))
    end

    def text=(value : String)
      to_unsafe.as(LibPango::GlyphItemIter*).value.text = value.to_unsafe
    end

    def start_glyph
      (to_unsafe.as(LibPango::GlyphItemIter*).value.start_glyph)
    end

    def start_glyph=(value : Int32)
      to_unsafe.as(LibPango::GlyphItemIter*).value.start_glyph = Int32.new(value)
    end

    def start_index
      (to_unsafe.as(LibPango::GlyphItemIter*).value.start_index)
    end

    def start_index=(value : Int32)
      to_unsafe.as(LibPango::GlyphItemIter*).value.start_index = Int32.new(value)
    end

    def start_char
      (to_unsafe.as(LibPango::GlyphItemIter*).value.start_char)
    end

    def start_char=(value : Int32)
      to_unsafe.as(LibPango::GlyphItemIter*).value.start_char = Int32.new(value)
    end

    def end_glyph
      (to_unsafe.as(LibPango::GlyphItemIter*).value.end_glyph)
    end

    def end_glyph=(value : Int32)
      to_unsafe.as(LibPango::GlyphItemIter*).value.end_glyph = Int32.new(value)
    end

    def end_index
      (to_unsafe.as(LibPango::GlyphItemIter*).value.end_index)
    end

    def end_index=(value : Int32)
      to_unsafe.as(LibPango::GlyphItemIter*).value.end_index = Int32.new(value)
    end

    def end_char
      (to_unsafe.as(LibPango::GlyphItemIter*).value.end_char)
    end

    def end_char=(value : Int32)
      to_unsafe.as(LibPango::GlyphItemIter*).value.end_char = Int32.new(value)
    end

  end
end

