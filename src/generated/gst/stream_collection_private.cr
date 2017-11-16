module Gst
  class StreamCollectionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::StreamCollectionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::StreamCollectionPrivate*)
    end

  end
end

