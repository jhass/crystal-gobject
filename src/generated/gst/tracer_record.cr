require "./object"

module Gst
  class TracerRecord < Object
    @pointer : Void*
    def initialize(pointer : LibGst::TracerRecord*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::TracerRecord*)
    end

  end
end

