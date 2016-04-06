require "./container"

module Gtk
  class Layout < Container
    def initialize(@gtk_layout)
    end

    def to_unsafe
      @gtk_layout.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Scrollable


    def self.new_internal(hadjustment, vadjustment)
      __return_value = LibGtk.layout_new(hadjustment && (hadjustment.to_unsafe as LibGtk::Adjustment*), vadjustment && (vadjustment.to_unsafe as LibGtk::Adjustment*))
      Gtk::Widget.new(__return_value)
    end

    def bin_window
      __return_value = LibGtk.layout_get_bin_window((to_unsafe as LibGtk::Layout*))
      Gdk::Window.new(__return_value)
    end

    def hadjustment
      __return_value = LibGtk.layout_get_hadjustment((to_unsafe as LibGtk::Layout*))
      Gtk::Adjustment.new(__return_value)
    end

    def size(width, height)
      __return_value = LibGtk.layout_get_size((to_unsafe as LibGtk::Layout*), UInt32.new(width), UInt32.new(height))
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.layout_get_vadjustment((to_unsafe as LibGtk::Layout*))
      Gtk::Adjustment.new(__return_value)
    end

    def move(child_widget, x, y)
      __return_value = LibGtk.layout_move((to_unsafe as LibGtk::Layout*), (child_widget.to_unsafe as LibGtk::Widget*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def put(child_widget, x, y)
      __return_value = LibGtk.layout_put((to_unsafe as LibGtk::Layout*), (child_widget.to_unsafe as LibGtk::Widget*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def hadjustment=(adjustment)
      __return_value = LibGtk.layout_set_hadjustment((to_unsafe as LibGtk::Layout*), adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def set_size(width, height)
      __return_value = LibGtk.layout_set_size((to_unsafe as LibGtk::Layout*), UInt32.new(width), UInt32.new(height))
      __return_value
    end

    def vadjustment=(adjustment)
      __return_value = LibGtk.layout_set_vadjustment((to_unsafe as LibGtk::Layout*), adjustment && (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

  end
end

