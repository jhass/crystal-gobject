module Gdk
  class KeymapKey
    include GObject::WrappedType

    def self.new(keycode : UInt32|Nil = nil, group : Int32|Nil = nil, level : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(12, 0u8)
      new(ptr.as(LibGdk::KeymapKey*)).tap do |object|
        object.keycode = keycode unless keycode.nil?
        object.group = group unless group.nil?
        object.level = level unless level.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGdk::KeymapKey*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::KeymapKey*)
    end

    def keycode
      (to_unsafe.as(LibGdk::KeymapKey*).value.keycode)
    end

    def keycode=(value : UInt32)
      to_unsafe.as(LibGdk::KeymapKey*).value.keycode = UInt32.new(value)
    end

    def group
      (to_unsafe.as(LibGdk::KeymapKey*).value.group)
    end

    def group=(value : Int32)
      to_unsafe.as(LibGdk::KeymapKey*).value.group = Int32.new(value)
    end

    def level
      (to_unsafe.as(LibGdk::KeymapKey*).value.level)
    end

    def level=(value : Int32)
      to_unsafe.as(LibGdk::KeymapKey*).value.level = Int32.new(value)
    end

  end
end

