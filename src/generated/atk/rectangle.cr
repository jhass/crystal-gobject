module Atk
  class Rectangle
    include GObject::WrappedType

    def self.new(x : Int32|Nil = nil, y : Int32|Nil = nil, width : Int32|Nil = nil, height : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibAtk::Rectangle*)).tap do |object|
        object.x = x unless x.nil?
        object.y = y unless y.nil?
        object.width = width unless width.nil?
        object.height = height unless height.nil?
      end
    end

    @atk_rectangle : LibAtk::Rectangle*?
    def initialize(@atk_rectangle : LibAtk::Rectangle*)
    end

    def to_unsafe
      @atk_rectangle.not_nil!.as(Void*)
    end

    def x
      (to_unsafe.value.x)
    end

    def x=(value : Int32)
      to_unsafe.value.x = Int32.new(value)
    end

    def y
      (to_unsafe.value.y)
    end

    def y=(value : Int32)
      to_unsafe.value.y = Int32.new(value)
    end

    def width
      (to_unsafe.value.width)
    end

    def width=(value : Int32)
      to_unsafe.value.width = Int32.new(value)
    end

    def height
      (to_unsafe.value.height)
    end

    def height=(value : Int32)
      to_unsafe.value.height = Int32.new(value)
    end

  end
end

