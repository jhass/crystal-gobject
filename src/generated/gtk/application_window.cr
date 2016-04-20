require "./window"

module Gtk
  class ApplicationWindow < Window
    @gtk_application_window : LibGtk::ApplicationWindow*?
    def initialize(@gtk_application_window : LibGtk::ApplicationWindow*)
    end

    def to_unsafe
      @gtk_application_window.not_nil!
    end

    # Implements ImplementorIface
    # Implements ActionGroup
    # Implements ActionMap
    # Implements Buildable

    def self.new_internal(application)
      __return_value = LibGtk.application_window_new((application.to_unsafe as LibGtk::Application*))
      cast Gtk::Widget.new(__return_value)
    end

    def help_overlay
      __return_value = LibGtk.application_window_get_help_overlay((to_unsafe as LibGtk::ApplicationWindow*))
      Gtk::ShortcutsWindow.new(__return_value) if __return_value
    end

    def id
      __return_value = LibGtk.application_window_get_id((to_unsafe as LibGtk::ApplicationWindow*))
      __return_value
    end

    def show_menubar
      __return_value = LibGtk.application_window_get_show_menubar((to_unsafe as LibGtk::ApplicationWindow*))
      __return_value
    end

    def help_overlay=(help_overlay)
      __return_value = LibGtk.application_window_set_help_overlay((to_unsafe as LibGtk::ApplicationWindow*), help_overlay && (help_overlay.to_unsafe as LibGtk::ShortcutsWindow*))
      __return_value
    end

    def show_menubar=(show_menubar)
      __return_value = LibGtk.application_window_set_show_menubar((to_unsafe as LibGtk::ApplicationWindow*), show_menubar)
      __return_value
    end

  end
end

