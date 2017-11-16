module Gtk
  class WindowGroup < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::WindowGroup*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::WindowGroup*)
    end

    def self.new : self
      __return_value = LibGtk.window_group_new
      cast Gtk::WindowGroup.new(__return_value)
    end

    def add_window(window)
      LibGtk.window_group_add_window(@pointer.as(LibGtk::WindowGroup*), window.to_unsafe.as(LibGtk::Window*))
      nil
    end

    def current_device_grab(device)
      __return_value = LibGtk.window_group_get_current_device_grab(@pointer.as(LibGtk::WindowGroup*), device.to_unsafe.as(LibGdk::Device*))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def current_grab
      __return_value = LibGtk.window_group_get_current_grab(@pointer.as(LibGtk::WindowGroup*))
      Gtk::Widget.new(__return_value)
    end

    def list_windows
      __return_value = LibGtk.window_group_list_windows(@pointer.as(LibGtk::WindowGroup*))
      GLib::ListIterator(Gtk::Window, LibGtk::Window**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def remove_window(window)
      LibGtk.window_group_remove_window(@pointer.as(LibGtk::WindowGroup*), window.to_unsafe.as(LibGtk::Window*))
      nil
    end

  end
end

