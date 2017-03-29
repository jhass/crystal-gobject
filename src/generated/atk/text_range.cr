module Atk
  class TextRange
    include GObject::WrappedType

    def self.new(bounds : Atk::TextRectangle|Nil = nil, start_offset : Int32|Nil = nil, end_offset : Int32|Nil = nil, content : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibAtk::TextRange*)).tap do |object|
        object.bounds = bounds unless bounds.nil?
        object.start_offset = start_offset unless start_offset.nil?
        object.end_offset = end_offset unless end_offset.nil?
        object.content = content unless content.nil?
      end
    end

    @atk_text_range : LibAtk::TextRange*?
    def initialize(@atk_text_range : LibAtk::TextRange*)
    end

    def to_unsafe
      @atk_text_range.not_nil!
    end

    def bounds
      Atk::TextRectangle.new((to_unsafe.as(LibAtk::TextRange*).value.bounds))
    end

    def bounds=(value : Atk::TextRectangle)
      to_unsafe.as(LibAtk::TextRange*).value.bounds = value
    end

    def start_offset
      (to_unsafe.as(LibAtk::TextRange*).value.start_offset)
    end

    def start_offset=(value : Int32)
      to_unsafe.as(LibAtk::TextRange*).value.start_offset = Int32.new(value)
    end

    def end_offset
      (to_unsafe.as(LibAtk::TextRange*).value.end_offset)
    end

    def end_offset=(value : Int32)
      to_unsafe.as(LibAtk::TextRange*).value.end_offset = Int32.new(value)
    end

    def content
      (raise "Expected string but got null" unless (to_unsafe.as(LibAtk::TextRange*).value.content); ::String.new((to_unsafe.as(LibAtk::TextRange*).value.content)))
    end

    def content=(value : String)
      to_unsafe.as(LibAtk::TextRange*).value.content = value.to_unsafe
    end

  end
end

