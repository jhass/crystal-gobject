require "./object"

module Gst
  class Tracer < Object
    @gst_tracer : LibGst::Tracer*?
    def initialize(@gst_tracer : LibGst::Tracer*)
    end

    def to_unsafe
      @gst_tracer.not_nil!
    end

    def params
      __return_value = LibGst.tracer_get_params(to_unsafe.as(LibGst::Tracer*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

