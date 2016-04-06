require "./widget"

module Gtk
  class Invisible < Widget
    def initialize(@gtk_invisible)
    end

    def to_unsafe
      @gtk_invisible.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable

    def self.new_internal
      __return_value = LibGtk.invisible_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_for_screen(screen)
      __return_value = LibGtk.invisible_new_for_screen((screen.to_unsafe as LibGdk::Screen*))
      Gtk::Widget.new(__return_value)
    end

    def screen
      __return_value = LibGtk.invisible_get_screen((to_unsafe as LibGtk::Invisible*))
      Gdk::Screen.new(__return_value)
    end

    def screen=(screen)
      __return_value = LibGtk.invisible_set_screen((to_unsafe as LibGtk::Invisible*), (screen.to_unsafe as LibGdk::Screen*))
      __return_value
    end

  end
end

