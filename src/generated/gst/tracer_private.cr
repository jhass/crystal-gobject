module Gst
  class TracerPrivate
    include GObject::WrappedType

    def initialize(@gst_tracer_private)
    end

    def to_unsafe
      @gst_tracer_private.not_nil!
    end

  end
end

