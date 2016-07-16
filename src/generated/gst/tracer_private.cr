module Gst
  class TracerPrivate
    include GObject::WrappedType

    @gst_tracer_private : LibGst::TracerPrivate*?
    def initialize(@gst_tracer_private : LibGst::TracerPrivate*)
    end

    def to_unsafe
      @gst_tracer_private.not_nil!.as(Void*)
    end

  end
end

