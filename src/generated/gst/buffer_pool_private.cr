module Gst
  class BufferPoolPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::BufferPoolPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::BufferPoolPrivate*)
    end

  end
end

