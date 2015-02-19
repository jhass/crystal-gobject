require "./container"

module Gtk
  class Layout < Container
    def initialize @gtk_layout
    end

    def to_unsafe
      @gtk_layout.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Scrollable
    def height=(__value)
      LibGtk.layout_set_height((to_unsafe as LibGtk::Layout*), UInt32.cast(__value))
    end

    def width=(__value)
      LibGtk.layout_set_width((to_unsafe as LibGtk::Layout*), UInt32.cast(__value))
    end

    def self.new_internal(hadjustment, vadjustment)
      __return_value = LibGtk.layout_new((hadjustment.to_unsafe as LibGtk::Adjustment*), (vadjustment.to_unsafe as LibGtk::Adjustment*))
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
      __return_value = LibGtk.layout_get_size((to_unsafe as LibGtk::Layout*), UInt32.cast(width), UInt32.cast(height))
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.layout_get_vadjustment((to_unsafe as LibGtk::Layout*))
      Gtk::Adjustment.new(__return_value)
    end

    def move(child_widget, x, y)
      __return_value = LibGtk.layout_move((to_unsafe as LibGtk::Layout*), (child_widget.to_unsafe as LibGtk::Widget*), Int32.cast(x), Int32.cast(y))
      __return_value
    end

    def put(child_widget, x, y)
      __return_value = LibGtk.layout_put((to_unsafe as LibGtk::Layout*), (child_widget.to_unsafe as LibGtk::Widget*), Int32.cast(x), Int32.cast(y))
      __return_value
    end

    def hadjustment=(adjustment)
      __return_value = LibGtk.layout_set_hadjustment((to_unsafe as LibGtk::Layout*), (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def size=(width, height)
      __return_value = LibGtk.layout_set_size((to_unsafe as LibGtk::Layout*), UInt32.cast(width), UInt32.cast(height))
      __return_value
    end

    def vadjustment=(adjustment)
      __return_value = LibGtk.layout_set_vadjustment((to_unsafe as LibGtk::Layout*), (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

  end
end

