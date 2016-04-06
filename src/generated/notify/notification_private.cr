module Notify
  class NotificationPrivate
    include GObject::WrappedType

    def initialize(@notify_notification_private)
    end

    def to_unsafe
      @notify_notification_private.not_nil!
    end

  end
end

