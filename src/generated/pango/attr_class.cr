module Pango
  class AttrClass
    include GObject::WrappedType

    def self.new(type : Pango::AttrType|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibPango::AttrClass*)).tap do |object|
        object.type = type unless type.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibPango::AttrClass*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::AttrClass*)
    end

    def type
      (to_unsafe.as(LibPango::AttrClass*).value.type)
    end

    def type=(value : Pango::AttrType)
      to_unsafe.as(LibPango::AttrClass*).value.type = value
    end

    def copy
      (to_unsafe.as(LibPango::AttrClass*).value.copy)
    end

    def destroy
      (to_unsafe.as(LibPango::AttrClass*).value.destroy)
    end

    def equal
      (to_unsafe.as(LibPango::AttrClass*).value.equal)
    end

  end
end

