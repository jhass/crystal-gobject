require "./widget"

module Gtk
  class Invisible < Widget
    @gtk_invisible : LibGtk::Invisible*?
    def initialize(@gtk_invisible : LibGtk::Invisible*)
    end

    def to_unsafe
      @gtk_invisible.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def screen
      __return_value = LibGtk.invisible_get_screen(to_unsafe.as(LibGtk::Invisible*))
      Gdk::Screen.new(__return_value)
    end

    def self.new : self
      __return_value = LibGtk.invisible_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_for_screen(screen) : self
      __return_value = LibGtk.invisible_new_for_screen(screen.to_unsafe.as(LibGdk::Screen*))
      cast Gtk::Widget.new(__return_value)
    end

    def screen
      __return_value = LibGtk.invisible_get_screen(to_unsafe.as(LibGtk::Invisible*))
      Gdk::Screen.new(__return_value)
    end

    def screen=(screen)
      __return_value = LibGtk.invisible_set_screen(to_unsafe.as(LibGtk::Invisible*), screen.to_unsafe.as(LibGdk::Screen*))
      __return_value
    end

  end
end

