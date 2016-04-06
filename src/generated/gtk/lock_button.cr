require "./button"

module Gtk
  class LockButton < Button
    def initialize(@gtk_lock_button)
    end

    def to_unsafe
      @gtk_lock_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable






    def self.new_internal(permission)
      __return_value = LibGtk.lock_button_new(permission && (permission.to_unsafe as LibGio::Permission*))
      Gtk::Widget.new(__return_value)
    end

    def permission
      __return_value = LibGtk.lock_button_get_permission((to_unsafe as LibGtk::LockButton*))
      Gio::Permission.new(__return_value)
    end

    def permission=(permission)
      __return_value = LibGtk.lock_button_set_permission((to_unsafe as LibGtk::LockButton*), permission && (permission.to_unsafe as LibGio::Permission*))
      __return_value
    end

  end
end

