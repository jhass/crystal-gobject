module GObject
  class ClosureNotifyData
    include GObject::WrappedType

    @g_object_closure_notify_data : LibGObject::ClosureNotifyData*?
    def initialize(@g_object_closure_notify_data : LibGObject::ClosureNotifyData*)
    end

    def to_unsafe
      @g_object_closure_notify_data.not_nil!
    end

  end
end

