module Gst
  class StreamPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::StreamPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::StreamPrivate*)
    end

  end
end

