module Gst
  class PipelinePrivate
    include GObject::WrappedType

    def initialize(@gst_pipeline_private)
    end

    def to_unsafe
      @gst_pipeline_private.not_nil!
    end

  end
end

