module GObject
  class ClosureNotifyData
    include GObject::WrappedType

    def self.new(data : Void*|Nil = nil, notify : GObject::ClosureNotify|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGObject::ClosureNotifyData*)).tap do |object|
        object.data = data unless data.nil?
        object.notify = notify unless notify.nil?
      end
    end

    @g_object_closure_notify_data : LibGObject::ClosureNotifyData*?
    def initialize(@g_object_closure_notify_data : LibGObject::ClosureNotifyData*)
    end

    def to_unsafe
      @g_object_closure_notify_data.not_nil!
    end

    def data
      (to_unsafe.as(LibGObject::ClosureNotifyData*).value.data)
    end

    def data=(value : Void*)
      to_unsafe.as(LibGObject::ClosureNotifyData*).value.data = value
    end

    def notify
      (to_unsafe.as(LibGObject::ClosureNotifyData*).value.notify)
    end

    def notify=(value : GObject::ClosureNotify)
      to_unsafe.as(LibGObject::ClosureNotifyData*).value.notify = value
    end

  end
end

