require "./object"

module Gst
  class TracerRecord < Object
    @gst_tracer_record : LibGst::TracerRecord*?
    def initialize(@gst_tracer_record : LibGst::TracerRecord*)
    end

    def to_unsafe
      @gst_tracer_record.not_nil!
    end

  end
end

