module Gst
  class GhostPadPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::GhostPadPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::GhostPadPrivate*)
    end

  end
end

