module Gst
  class TaskPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::TaskPrivate*))
    end

    @gst_task_private : LibGst::TaskPrivate*?
    def initialize(@gst_task_private : LibGst::TaskPrivate*)
    end

    def to_unsafe
      @gst_task_private.not_nil!.as(Void*)
    end

  end
end

