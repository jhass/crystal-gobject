module Gst
  class TaskPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::TaskPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::TaskPrivate*)
    end

  end
end

