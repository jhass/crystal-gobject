require "./window"

module Gtk
  class OffscreenWindow < Window
    def initialize(@gtk_offscreen_window)
    end

    def to_unsafe
      @gtk_offscreen_window.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.offscreen_window_new
      Gtk::Widget.new(__return_value)
    end

    def pixbuf
      __return_value = LibGtk.offscreen_window_get_pixbuf((to_unsafe as LibGtk::OffscreenWindow*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def surface
      __return_value = LibGtk.offscreen_window_get_surface((to_unsafe as LibGtk::OffscreenWindow*))
      Cairo::Surface.new(__return_value)
    end

  end
end

