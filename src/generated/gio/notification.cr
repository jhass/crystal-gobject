module Gio
  class Notification < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::Notification*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::Notification*)
    end

    def self.new(title) : self
      __return_value = LibGio.notification_new(title.to_unsafe)
      cast Gio::Notification.new(__return_value)
    end

    def add_button(label, detailed_action)
      LibGio.notification_add_button(@pointer.as(LibGio::Notification*), label.to_unsafe, detailed_action.to_unsafe)
      nil
    end

    def add_button_with_target(label, action, target)
      LibGio.notification_add_button_with_target(@pointer.as(LibGio::Notification*), label.to_unsafe, action.to_unsafe, target ? target.to_unsafe.as(LibGLib::Variant*) : nil)
      nil
    end

    def body=(body)
      LibGio.notification_set_body(@pointer.as(LibGio::Notification*), body ? body.to_unsafe : nil)
      nil
    end

    def default_action=(detailed_action)
      LibGio.notification_set_default_action(@pointer.as(LibGio::Notification*), detailed_action.to_unsafe)
      nil
    end

    def set_default_action_and_target(action, target)
      LibGio.notification_set_default_action_and_target(@pointer.as(LibGio::Notification*), action.to_unsafe, target ? target.to_unsafe.as(LibGLib::Variant*) : nil)
      nil
    end

    def icon=(icon)
      LibGio.notification_set_icon(@pointer.as(LibGio::Notification*), icon.to_unsafe.as(LibGio::Icon*))
      nil
    end

    def priority=(priority : Gio::NotificationPriority)
      LibGio.notification_set_priority(@pointer.as(LibGio::Notification*), priority)
      nil
    end

    def title=(title)
      LibGio.notification_set_title(@pointer.as(LibGio::Notification*), title.to_unsafe)
      nil
    end

    def urgent=(urgent)
      LibGio.notification_set_urgent(@pointer.as(LibGio::Notification*), urgent)
      nil
    end

  end
end

