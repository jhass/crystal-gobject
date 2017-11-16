require "./widget"

module Gtk
  class Invisible < Widget
    @pointer : Void*
    def initialize(pointer : LibGtk::Invisible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Invisible*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def screen
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "screen", gvalue)
      Gdk::Screen.cast(gvalue.object)
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
      __return_value = LibGtk.invisible_get_screen(@pointer.as(LibGtk::Invisible*))
      Gdk::Screen.new(__return_value)
    end

    def screen=(screen)
      LibGtk.invisible_set_screen(@pointer.as(LibGtk::Invisible*), screen.to_unsafe.as(LibGdk::Screen*))
      nil
    end

  end
end

