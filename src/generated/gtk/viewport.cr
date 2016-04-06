require "./bin"

module Gtk
  class Viewport < Bin
    def initialize(@gtk_viewport)
    end

    def to_unsafe
      @gtk_viewport.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Scrollable

    def self.new_internal(hadjustment, vadjustment)
      __return_value = LibGtk.viewport_new(hadjustment && (hadjustment.to_unsafe as LibGtk::Adjustment*), vadjustment && (vadjustment.to_unsafe as LibGtk::Adjustment*))
      Gtk::Widget.new(__return_value)
    end

    def bin_window
      __return_value = LibGtk.viewport_get_bin_window((to_unsafe as LibGtk::Viewport*))
      Gdk::Window.new(__return_value)
    end

    def hadjustment
      __return_value = LibGtk.viewport_get_hadjustment((to_unsafe as LibGtk::Viewport*))
      Gtk::Adjustment.new(__return_value)
    end

    def shadow_type
      __return_value = LibGtk.viewport_get_shadow_type((to_unsafe as LibGtk::Viewport*))
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.viewport_get_vadjustment((to_unsafe as LibGtk::Viewport*))
      Gtk::Adjustment.new(__return_value)
    end

    def view_window
      __return_value = LibGtk.viewport_get_view_window((to_unsafe as LibGtk::Viewport*))
      Gdk::Window.new(__return_value)
    end

    def hadjustment=(adjustment)
      __return_value = LibGtk.viewport_set_hadjustment((to_unsafe as LibGtk::Viewport*), adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def shadow_type=(type)
      __return_value = LibGtk.viewport_set_shadow_type((to_unsafe as LibGtk::Viewport*), type)
      __return_value
    end

    def vadjustment=(adjustment)
      __return_value = LibGtk.viewport_set_vadjustment((to_unsafe as LibGtk::Viewport*), adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

  end
end

