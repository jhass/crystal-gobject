module Gst
  class PipelinePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::PipelinePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::PipelinePrivate*)
    end

  end
end

