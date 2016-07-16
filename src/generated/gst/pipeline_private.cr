module Gst
  class PipelinePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::PipelinePrivate*))
    end

    @gst_pipeline_private : LibGst::PipelinePrivate*?
    def initialize(@gst_pipeline_private : LibGst::PipelinePrivate*)
    end

    def to_unsafe
      @gst_pipeline_private.not_nil!.as(Void*)
    end

  end
end

