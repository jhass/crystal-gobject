require "./window"

module Gtk
  class OffscreenWindow < Window
    @pointer : Void*
    def initialize(pointer : LibGtk::OffscreenWindow*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::OffscreenWindow*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.offscreen_window_new
      cast Gtk::Widget.new(__return_value)
    end

    def pixbuf
      __return_value = LibGtk.offscreen_window_get_pixbuf(@pointer.as(LibGtk::OffscreenWindow*))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def surface
      __return_value = LibGtk.offscreen_window_get_surface(@pointer.as(LibGtk::OffscreenWindow*))
      Cairo::Surface.new(__return_value) if __return_value
    end

  end
end

