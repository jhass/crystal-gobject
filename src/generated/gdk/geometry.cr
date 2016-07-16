module Gdk
  class Geometry
    include GObject::WrappedType

    def self.new(min_width : Int32|Nil = nil, min_height : Int32|Nil = nil, max_width : Int32|Nil = nil, max_height : Int32|Nil = nil, base_width : Int32|Nil = nil, base_height : Int32|Nil = nil, width_inc : Int32|Nil = nil, height_inc : Int32|Nil = nil, min_aspect : Float64|Nil = nil, max_aspect : Float64|Nil = nil, win_gravity : Gdk::Gravity|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(56, 0u8)
      new(ptr.as(LibGdk::Geometry*)).tap do |object|
        object.min_width = min_width unless min_width.nil?
        object.min_height = min_height unless min_height.nil?
        object.max_width = max_width unless max_width.nil?
        object.max_height = max_height unless max_height.nil?
        object.base_width = base_width unless base_width.nil?
        object.base_height = base_height unless base_height.nil?
        object.width_inc = width_inc unless width_inc.nil?
        object.height_inc = height_inc unless height_inc.nil?
        object.min_aspect = min_aspect unless min_aspect.nil?
        object.max_aspect = max_aspect unless max_aspect.nil?
        object.win_gravity = win_gravity unless win_gravity.nil?
      end
    end

    @gdk_geometry : LibGdk::Geometry*?
    def initialize(@gdk_geometry : LibGdk::Geometry*)
    end

    def to_unsafe
      @gdk_geometry.not_nil!.as(Void*)
    end

    def min_width
      (to_unsafe.as(LibGdk::Geometry*).value.min_width)
    end

    def min_width=(value : Int32)
      to_unsafe.as(LibGdk::Geometry*).value.min_width = Int32.new(value)
    end

    def min_height
      (to_unsafe.as(LibGdk::Geometry*).value.min_height)
    end

    def min_height=(value : Int32)
      to_unsafe.as(LibGdk::Geometry*).value.min_height = Int32.new(value)
    end

    def max_width
      (to_unsafe.as(LibGdk::Geometry*).value.max_width)
    end

    def max_width=(value : Int32)
      to_unsafe.as(LibGdk::Geometry*).value.max_width = Int32.new(value)
    end

    def max_height
      (to_unsafe.as(LibGdk::Geometry*).value.max_height)
    end

    def max_height=(value : Int32)
      to_unsafe.as(LibGdk::Geometry*).value.max_height = Int32.new(value)
    end

    def base_width
      (to_unsafe.as(LibGdk::Geometry*).value.base_width)
    end

    def base_width=(value : Int32)
      to_unsafe.as(LibGdk::Geometry*).value.base_width = Int32.new(value)
    end

    def base_height
      (to_unsafe.as(LibGdk::Geometry*).value.base_height)
    end

    def base_height=(value : Int32)
      to_unsafe.as(LibGdk::Geometry*).value.base_height = Int32.new(value)
    end

    def width_inc
      (to_unsafe.as(LibGdk::Geometry*).value.width_inc)
    end

    def width_inc=(value : Int32)
      to_unsafe.as(LibGdk::Geometry*).value.width_inc = Int32.new(value)
    end

    def height_inc
      (to_unsafe.as(LibGdk::Geometry*).value.height_inc)
    end

    def height_inc=(value : Int32)
      to_unsafe.as(LibGdk::Geometry*).value.height_inc = Int32.new(value)
    end

    def min_aspect
      (to_unsafe.as(LibGdk::Geometry*).value.min_aspect)
    end

    def min_aspect=(value : Float64)
      to_unsafe.as(LibGdk::Geometry*).value.min_aspect = Float64.new(value)
    end

    def max_aspect
      (to_unsafe.as(LibGdk::Geometry*).value.max_aspect)
    end

    def max_aspect=(value : Float64)
      to_unsafe.as(LibGdk::Geometry*).value.max_aspect = Float64.new(value)
    end

    def win_gravity
      (to_unsafe.as(LibGdk::Geometry*).value.win_gravity)
    end

    def win_gravity=(value : Gdk::Gravity)
      to_unsafe.as(LibGdk::Geometry*).value.win_gravity = value
    end

  end
end

