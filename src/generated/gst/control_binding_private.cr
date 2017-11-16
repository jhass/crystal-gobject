module Gst
  class ControlBindingPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::ControlBindingPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ControlBindingPrivate*)
    end

  end
end

