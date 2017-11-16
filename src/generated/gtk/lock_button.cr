require "./button"

module Gtk
  class LockButton < Button
    @pointer : Void*
    def initialize(pointer : LibGtk::LockButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::LockButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def permission
      __return_value = LibGtk.lock_button_get_permission(to_unsafe.as(LibGtk::LockButton*))
      Gio::Permission.new(__return_value)
    end

    def text_lock
      __return_value = LibGtk.lock_button_get_text_lock(to_unsafe.as(LibGtk::LockButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def text_unlock
      __return_value = LibGtk.lock_button_get_text_unlock(to_unsafe.as(LibGtk::LockButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def tooltip_lock
      __return_value = LibGtk.lock_button_get_tooltip_lock(to_unsafe.as(LibGtk::LockButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def tooltip_not_authorized
      __return_value = LibGtk.lock_button_get_tooltip_not_authorized(to_unsafe.as(LibGtk::LockButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def tooltip_unlock
      __return_value = LibGtk.lock_button_get_tooltip_unlock(to_unsafe.as(LibGtk::LockButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new(permission) : self
      __return_value = LibGtk.lock_button_new(permission ? permission.to_unsafe.as(LibGio::Permission*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def permission
      __return_value = LibGtk.lock_button_get_permission(@pointer.as(LibGtk::LockButton*))
      Gio::Permission.new(__return_value)
    end

    def permission=(permission)
      LibGtk.lock_button_set_permission(@pointer.as(LibGtk::LockButton*), permission ? permission.to_unsafe.as(LibGio::Permission*) : nil)
      nil
    end

  end
end

