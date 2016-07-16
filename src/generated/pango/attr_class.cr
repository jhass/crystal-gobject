module Pango
  class AttrClass
    include GObject::WrappedType

    def self.new(type : Pango::AttrType|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibPango::AttrClass*)).tap do |object|
        object.type = type unless type.nil?
      end
    end

    @pango_attr_class : LibPango::AttrClass*?
    def initialize(@pango_attr_class : LibPango::AttrClass*)
    end

    def to_unsafe
      @pango_attr_class.not_nil!
    end

    def type
      (to_unsafe.value.type)
    end

    def type=(value : Pango::AttrType)
      to_unsafe.value.type = value
    end

    def copy
      (to_unsafe.value.copy)
    end

    def destroy
      (to_unsafe.value.destroy)
    end

    def equal
      (to_unsafe.value.equal)
    end

  end
end

