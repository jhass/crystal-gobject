module Gst
  class TaskPrivate
    include GObject::WrappedType

    @gst_task_private : LibGst::TaskPrivate*?
    def initialize(@gst_task_private : LibGst::TaskPrivate*)
    end

    def to_unsafe
      @gst_task_private.not_nil!.as(Void*)
    end

  end
end

