require "./object"

module Gst
  class TracerRecord < Object
    def initialize(@gst_tracer_record)
    end

    def to_unsafe
      @gst_tracer_record.not_nil!
    end

  end
end

