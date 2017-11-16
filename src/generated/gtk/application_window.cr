require "./window"

module Gtk
  class ApplicationWindow < Window
    @pointer : Void*
    def initialize(pointer : LibGtk::ApplicationWindow*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ApplicationWindow*)
    end

    # Implements ImplementorIface
    # Implements ActionGroup
    # Implements ActionMap
    # Implements Buildable
    def show_menubar
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_menubar", gvalue)
      gvalue.boolean
    end

    def self.new(application) : self
      __return_value = LibGtk.application_window_new(application.to_unsafe.as(LibGtk::Application*))
      cast Gtk::Widget.new(__return_value)
    end

    def help_overlay
      __return_value = LibGtk.application_window_get_help_overlay(@pointer.as(LibGtk::ApplicationWindow*))
      Gtk::ShortcutsWindow.new(__return_value) if __return_value
    end

    def id
      __return_value = LibGtk.application_window_get_id(@pointer.as(LibGtk::ApplicationWindow*))
      __return_value
    end

    def show_menubar
      __return_value = LibGtk.application_window_get_show_menubar(@pointer.as(LibGtk::ApplicationWindow*))
      __return_value
    end

    def help_overlay=(help_overlay)
      LibGtk.application_window_set_help_overlay(@pointer.as(LibGtk::ApplicationWindow*), help_overlay ? help_overlay.to_unsafe.as(LibGtk::ShortcutsWindow*) : nil)
      nil
    end

    def show_menubar=(show_menubar)
      LibGtk.application_window_set_show_menubar(@pointer.as(LibGtk::ApplicationWindow*), show_menubar)
      nil
    end

  end
end

