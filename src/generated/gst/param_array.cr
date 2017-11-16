module Gst
  class ParamArray < GObject::ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGst::ParamArray*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ParamArray*)
    end

  end
end

