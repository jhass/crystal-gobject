module Atk
  class TextRectangle
    include GObject::WrappedType

    def self.new(x : Int32|Nil = nil, y : Int32|Nil = nil, width : Int32|Nil = nil, height : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibAtk::TextRectangle*)).tap do |object|
        object.x = x unless x.nil?
        object.y = y unless y.nil?
        object.width = width unless width.nil?
        object.height = height unless height.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibAtk::TextRectangle*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibAtk::TextRectangle*)
    end

    def x
      (to_unsafe.as(LibAtk::TextRectangle*).value.x)
    end

    def x=(value : Int32)
      to_unsafe.as(LibAtk::TextRectangle*).value.x = Int32.new(value)
    end

    def y
      (to_unsafe.as(LibAtk::TextRectangle*).value.y)
    end

    def y=(value : Int32)
      to_unsafe.as(LibAtk::TextRectangle*).value.y = Int32.new(value)
    end

    def width
      (to_unsafe.as(LibAtk::TextRectangle*).value.width)
    end

    def width=(value : Int32)
      to_unsafe.as(LibAtk::TextRectangle*).value.width = Int32.new(value)
    end

    def height
      (to_unsafe.as(LibAtk::TextRectangle*).value.height)
    end

    def height=(value : Int32)
      to_unsafe.as(LibAtk::TextRectangle*).value.height = Int32.new(value)
    end

  end
end

