module Gio
  class OutputVector
    include GObject::WrappedType

    def self.new(buffer : Void*|Nil = nil, size : UInt64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGio::OutputVector*)).tap do |object|
        object.buffer = buffer unless buffer.nil?
        object.size = size unless size.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGio::OutputVector*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::OutputVector*)
    end

    def buffer
      (to_unsafe.as(LibGio::OutputVector*).value.buffer)
    end

    def buffer=(value : Void*)
      to_unsafe.as(LibGio::OutputVector*).value.buffer = value
    end

    def size
      (to_unsafe.as(LibGio::OutputVector*).value.size)
    end

    def size=(value : UInt64)
      to_unsafe.as(LibGio::OutputVector*).value.size = UInt64.new(value)
    end

  end
end

