require "./object"

module Gst
  class Tracer < Object
    @pointer : Void*
    def initialize(pointer : LibGst::Tracer*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Tracer*)
    end

    def params
      __return_value = LibGst.tracer_get_params(to_unsafe.as(LibGst::Tracer*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

