module Gtk
  class WindowGroup < GObject::Object
    @gtk_window_group : LibGtk::WindowGroup*?
    def initialize(@gtk_window_group : LibGtk::WindowGroup*)
    end

    def to_unsafe
      @gtk_window_group.not_nil!
    end

    def self.new : self
      __return_value = LibGtk.window_group_new
      cast Gtk::WindowGroup.new(__return_value)
    end

    def add_window(window)
      LibGtk.window_group_add_window(to_unsafe.as(LibGtk::WindowGroup*), window.to_unsafe.as(LibGtk::Window*))
      nil
    end

    def current_device_grab(device)
      __return_value = LibGtk.window_group_get_current_device_grab(to_unsafe.as(LibGtk::WindowGroup*), device.to_unsafe.as(LibGdk::Device*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def current_grab
      __return_value = LibGtk.window_group_get_current_grab(to_unsafe.as(LibGtk::WindowGroup*))
      Gtk::Widget.new(__return_value)
    end

    def list_windows
      __return_value = LibGtk.window_group_list_windows(to_unsafe.as(LibGtk::WindowGroup*))
      GLib::ListIterator(Gtk::Window, LibGtk::Window*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def remove_window(window)
      LibGtk.window_group_remove_window(to_unsafe.as(LibGtk::WindowGroup*), window.to_unsafe.as(LibGtk::Window*))
      nil
    end

  end
end

