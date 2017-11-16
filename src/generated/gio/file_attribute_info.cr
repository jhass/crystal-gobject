module Gio
  class FileAttributeInfo
    include GObject::WrappedType

    def self.new(name : String|Nil = nil, type : Gio::FileAttributeType|Nil = nil, flags : Gio::FileAttributeInfoFlags|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGio::FileAttributeInfo*)).tap do |object|
        object.name = name unless name.nil?
        object.type = type unless type.nil?
        object.flags = flags unless flags.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGio::FileAttributeInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::FileAttributeInfo*)
    end

    def name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGio::FileAttributeInfo*).value.name); ::String.new((to_unsafe.as(LibGio::FileAttributeInfo*).value.name)))
    end

    def name=(value : String)
      to_unsafe.as(LibGio::FileAttributeInfo*).value.name = value.to_unsafe
    end

    def type
      (to_unsafe.as(LibGio::FileAttributeInfo*).value.type)
    end

    def type=(value : Gio::FileAttributeType)
      to_unsafe.as(LibGio::FileAttributeInfo*).value.type = value
    end

    def flags
      (to_unsafe.as(LibGio::FileAttributeInfo*).value.flags)
    end

    def flags=(value : Gio::FileAttributeInfoFlags)
      to_unsafe.as(LibGio::FileAttributeInfo*).value.flags = value
    end

  end
end

