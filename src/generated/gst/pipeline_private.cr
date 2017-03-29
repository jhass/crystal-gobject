module Gst
  class PipelinePrivate
    include GObject::WrappedType

    @gst_pipeline_private : LibGst::PipelinePrivate*?
    def initialize(@gst_pipeline_private : LibGst::PipelinePrivate*)
    end

    def to_unsafe
      @gst_pipeline_private.not_nil!
    end

  end
end

