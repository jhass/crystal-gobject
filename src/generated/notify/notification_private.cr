module Notify
  class NotificationPrivate
    include GObject::WrappedType

    @notify_notification_private : LibNotify::NotificationPrivate*?
    def initialize(@notify_notification_private : LibNotify::NotificationPrivate*)
    end

    def to_unsafe
      @notify_notification_private.not_nil!
    end

  end
end

