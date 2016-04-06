module GObject
  class ClosureNotifyData
    include GObject::WrappedType

    def initialize(@g_object_closure_notify_data)
    end

    def to_unsafe
      @g_object_closure_notify_data.not_nil!
    end

  end
end

