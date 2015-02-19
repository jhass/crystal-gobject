require "./bin"

module Gtk
  class Overlay < Bin
    def initialize @gtk_overlay
    end

    def to_unsafe
      @gtk_overlay.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.overlay_new
      Gtk::Widget.new(__return_value)
    end

    def add_overlay(widget)
      __return_value = LibGtk.overlay_add_overlay((to_unsafe as LibGtk::Overlay*), (widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

  end
end

