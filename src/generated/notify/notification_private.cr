module Notify
  class NotificationPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibNotify::NotificationPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibNotify::NotificationPrivate*)
    end

  end
end

