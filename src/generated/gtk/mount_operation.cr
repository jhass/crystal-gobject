module Gtk
  class MountOperation < Gio::MountOperation
    def initialize(@gtk_mount_operation)
    end

    def to_unsafe
      @gtk_mount_operation.not_nil!
    end




    def self.new_internal(parent)
      __return_value = LibGtk.mount_operation_new(parent && (parent.to_unsafe as LibGtk::Window*))
      Gio::MountOperation.new(__return_value)
    end

    def parent
      __return_value = LibGtk.mount_operation_get_parent((to_unsafe as LibGtk::MountOperation*))
      Gtk::Window.new(__return_value)
    end

    def screen
      __return_value = LibGtk.mount_operation_get_screen((to_unsafe as LibGtk::MountOperation*))
      Gdk::Screen.new(__return_value)
    end

    def showing?
      __return_value = LibGtk.mount_operation_is_showing((to_unsafe as LibGtk::MountOperation*))
      __return_value
    end

    def parent=(parent)
      __return_value = LibGtk.mount_operation_set_parent((to_unsafe as LibGtk::MountOperation*), parent && (parent.to_unsafe as LibGtk::Window*))
      __return_value
    end

    def screen=(screen)
      __return_value = LibGtk.mount_operation_set_screen((to_unsafe as LibGtk::MountOperation*), (screen.to_unsafe as LibGdk::Screen*))
      __return_value
    end

  end
end

