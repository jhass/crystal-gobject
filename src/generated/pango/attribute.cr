module Pango
  class Attribute
    include GObject::WrappedType

    def self.new(klass : Pango::AttrClass|Nil = nil, start_index : UInt32|Nil = nil, end_index : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibPango::Attribute*)).tap do |object|
        object.klass = klass unless klass.nil?
        object.start_index = start_index unless start_index.nil?
        object.end_index = end_index unless end_index.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibPango::Attribute*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::Attribute*)
    end

    def copy
      __return_value = LibPango.attribute_copy(@pointer.as(LibPango::Attribute*))
      Pango::Attribute.new(__return_value)
    end

    def destroy
      LibPango.attribute_destroy(@pointer.as(LibPango::Attribute*))
      nil
    end

    def equal(attr2)
      __return_value = LibPango.attribute_equal(@pointer.as(LibPango::Attribute*), attr2.to_unsafe.as(LibPango::Attribute*))
      __return_value
    end

    def init(klass)
      LibPango.attribute_init(@pointer.as(LibPango::Attribute*), klass.to_unsafe.as(LibPango::AttrClass*))
      nil
    end

    def klass
      Pango::AttrClass.new((to_unsafe.as(LibPango::Attribute*).value.klass))
    end

    def klass=(value : Pango::AttrClass)
      to_unsafe.as(LibPango::Attribute*).value.klass = value.to_unsafe.as(LibPango::AttrClass*)
    end

    def start_index
      (to_unsafe.as(LibPango::Attribute*).value.start_index)
    end

    def start_index=(value : UInt32)
      to_unsafe.as(LibPango::Attribute*).value.start_index = UInt32.new(value)
    end

    def end_index
      (to_unsafe.as(LibPango::Attribute*).value.end_index)
    end

    def end_index=(value : UInt32)
      to_unsafe.as(LibPango::Attribute*).value.end_index = UInt32.new(value)
    end

  end
end

