module Gst
  class TaskPrivate
    include GObject::WrappedType

    def initialize(@gst_task_private)
    end

    def to_unsafe
      @gst_task_private.not_nil!
    end

  end
end

