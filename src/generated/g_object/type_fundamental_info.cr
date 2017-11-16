module GObject
  class TypeFundamentalInfo
    include GObject::WrappedType

    def self.new(type_flags : GObject::TypeFundamentalFlags|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(4, 0u8)
      new(ptr.as(LibGObject::TypeFundamentalInfo*)).tap do |object|
        object.type_flags = type_flags unless type_flags.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGObject::TypeFundamentalInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::TypeFundamentalInfo*)
    end

    def type_flags
      (to_unsafe.as(LibGObject::TypeFundamentalInfo*).value.type_flags)
    end

    def type_flags=(value : GObject::TypeFundamentalFlags)
      to_unsafe.as(LibGObject::TypeFundamentalInfo*).value.type_flags = value
    end

  end
end

