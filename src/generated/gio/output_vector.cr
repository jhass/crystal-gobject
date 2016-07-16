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

    @gio_output_vector : LibGio::OutputVector*?
    def initialize(@gio_output_vector : LibGio::OutputVector*)
    end

    def to_unsafe
      @gio_output_vector.not_nil!.as(Void*)
    end

    def buffer
      (to_unsafe.value.buffer)
    end

    def buffer=(value : Void*)
      to_unsafe.value.buffer = value
    end

    def size
      (to_unsafe.value.size)
    end

    def size=(value : UInt64)
      to_unsafe.value.size = UInt64.new(value)
    end

  end
end

