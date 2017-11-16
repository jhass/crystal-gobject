module Gst
  class ParamFraction < GObject::ParamSpec
    @pointer : Void*
    def initialize(pointer : LibGst::ParamFraction*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ParamFraction*)
    end

  end
end

