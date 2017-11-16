module Gst
  class TracerPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::TracerPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::TracerPrivate*)
    end

  end
end

