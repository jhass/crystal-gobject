require "./button"

module Gtk
  class LockButton < Button
    @gtk_lock_button : LibGtk::LockButton*?
    def initialize(@gtk_lock_button : LibGtk::LockButton*)
    end

    def to_unsafe
      @gtk_lock_button.not_nil!.as(Void*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable






    def self.new(permission) : self
      __return_value = LibGtk.lock_button_new(permission && permission.to_unsafe.as(LibGio::Permission*))
      cast Gtk::Widget.new(__return_value)
    end

    def permission
      __return_value = LibGtk.lock_button_get_permission(to_unsafe.as(LibGtk::LockButton*))
      Gio::Permission.new(__return_value)
    end

    def permission=(permission)
      __return_value = LibGtk.lock_button_set_permission(to_unsafe.as(LibGtk::LockButton*), permission && permission.to_unsafe.as(LibGio::Permission*))
      __return_value
    end

  end
end

