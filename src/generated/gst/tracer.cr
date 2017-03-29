require "./object"

module Gst
  class Tracer < Object
    @gst_tracer : LibGst::Tracer*?
    def initialize(@gst_tracer : LibGst::Tracer*)
    end

    def to_unsafe
      @gst_tracer.not_nil!
    end


  end
end

