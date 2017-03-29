module Pango
  class Item
    include GObject::WrappedType

    def self.new(offset : Int32|Nil = nil, length : Int32|Nil = nil, num_chars : Int32|Nil = nil, analysis : Pango::Analysis|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibPango::Item*)).tap do |object|
        object.offset = offset unless offset.nil?
        object.length = length unless length.nil?
        object.num_chars = num_chars unless num_chars.nil?
        object.analysis = analysis unless analysis.nil?
      end
    end

    @pango_item : LibPango::Item*?
    def initialize(@pango_item : LibPango::Item*)
    end

    def to_unsafe
      @pango_item.not_nil!
    end

    def self.new : self
      __return_value = LibPango.item_new
      cast Pango::Item.new(__return_value)
    end

    def copy
      __return_value = LibPango.item_copy(to_unsafe.as(LibPango::Item*))
      Pango::Item.new(__return_value) if __return_value
    end

    def free
      __return_value = LibPango.item_free(to_unsafe.as(LibPango::Item*))
      __return_value
    end

    def split(split_index, split_offset)
      __return_value = LibPango.item_split(to_unsafe.as(LibPango::Item*), Int32.new(split_index), Int32.new(split_offset))
      Pango::Item.new(__return_value)
    end

    def offset
      (to_unsafe.as(LibPango::Item*).value.offset)
    end

    def offset=(value : Int32)
      to_unsafe.as(LibPango::Item*).value.offset = Int32.new(value)
    end

    def length
      (to_unsafe.as(LibPango::Item*).value.length)
    end

    def length=(value : Int32)
      to_unsafe.as(LibPango::Item*).value.length = Int32.new(value)
    end

    def num_chars
      (to_unsafe.as(LibPango::Item*).value.num_chars)
    end

    def num_chars=(value : Int32)
      to_unsafe.as(LibPango::Item*).value.num_chars = Int32.new(value)
    end

    def analysis
      Pango::Analysis.new((to_unsafe.as(LibPango::Item*).value.analysis))
    end

    def analysis=(value : Pango::Analysis)
      to_unsafe.as(LibPango::Item*).value.analysis = value
    end

  end
end

