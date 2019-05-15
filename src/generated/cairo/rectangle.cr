module Cairo
  class Rectangle
    include GObject::WrappedType

    def self.new(x : Float64|Nil = nil, y : Float64|Nil = nil, width : Float64|Nil = nil, height : Float64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibCairo::Rectangle*)).tap do |object|
        object.x = x unless x.nil?
        object.y = y unless y.nil?
        object.width = width unless width.nil?
        object.height = height unless height.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibCairo::Rectangle*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibCairo::Rectangle*)
    end

    def x
      (to_unsafe.as(LibCairo::Rectangle*).value.x)
    end

    def x=(value : Float64)
      to_unsafe.as(LibCairo::Rectangle*).value.x = Float64.new(value)
    end

    def y
      (to_unsafe.as(LibCairo::Rectangle*).value.y)
    end

    def y=(value : Float64)
      to_unsafe.as(LibCairo::Rectangle*).value.y = Float64.new(value)
    end

    def width
      (to_unsafe.as(LibCairo::Rectangle*).value.width)
    end

    def width=(value : Float64)
      to_unsafe.as(LibCairo::Rectangle*).value.width = Float64.new(value)
    end

    def height
      (to_unsafe.as(LibCairo::Rectangle*).value.height)
    end

    def height=(value : Float64)
      to_unsafe.as(LibCairo::Rectangle*).value.height = Float64.new(value)
    end

  end
end

