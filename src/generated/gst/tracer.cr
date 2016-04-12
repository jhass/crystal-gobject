require "./object"

module Gst
  class Tracer < Object
    def initialize(@gst_tracer)
    end

    def to_unsafe
      @gst_tracer.not_nil!
    end


  end
end

