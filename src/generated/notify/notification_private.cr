module Notify
  class NotificationPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibNotify::NotificationPrivate*))
    end

    @notify_notification_private : LibNotify::NotificationPrivate*?
    def initialize(@notify_notification_private : LibNotify::NotificationPrivate*)
    end

    def to_unsafe
      @notify_notification_private.not_nil!.as(Void*)
    end

  end
end

