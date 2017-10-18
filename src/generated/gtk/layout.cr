require "./container"

module Gtk
  class Layout < Container
    @gtk_layout : LibGtk::Layout*?
    def initialize(@gtk_layout : LibGtk::Layout*)
    end

    def to_unsafe
      @gtk_layout.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Scrollable
    def height
      __return_value = LibGtk.layout_get_height(to_unsafe.as(LibGtk::Layout*))
      __return_value
    end

    def width
      __return_value = LibGtk.layout_get_width(to_unsafe.as(LibGtk::Layout*))
      __return_value
    end

    def self.new(hadjustment, vadjustment) : self
      __return_value = LibGtk.layout_new(hadjustment ? hadjustment.to_unsafe.as(LibGtk::Adjustment*) : nil, vadjustment ? vadjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def bin_window
      __return_value = LibGtk.layout_get_bin_window(to_unsafe.as(LibGtk::Layout*))
      Gdk::Window.new(__return_value)
    end

    def hadjustment
      __return_value = LibGtk.layout_get_hadjustment(to_unsafe.as(LibGtk::Layout*))
      Gtk::Adjustment.new(__return_value)
    end

    def size(width, height)
      LibGtk.layout_get_size(to_unsafe.as(LibGtk::Layout*), width, height)
      nil
    end

    def vadjustment
      __return_value = LibGtk.layout_get_vadjustment(to_unsafe.as(LibGtk::Layout*))
      Gtk::Adjustment.new(__return_value)
    end

    def move(child_widget, x, y)
      LibGtk.layout_move(to_unsafe.as(LibGtk::Layout*), child_widget.to_unsafe.as(LibGtk::Widget*), Int32.new(x), Int32.new(y))
      nil
    end

    def put(child_widget, x, y)
      LibGtk.layout_put(to_unsafe.as(LibGtk::Layout*), child_widget.to_unsafe.as(LibGtk::Widget*), Int32.new(x), Int32.new(y))
      nil
    end

    def hadjustment=(adjustment)
      LibGtk.layout_set_hadjustment(to_unsafe.as(LibGtk::Layout*), adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      nil
    end

    def set_size(width, height)
      LibGtk.layout_set_size(to_unsafe.as(LibGtk::Layout*), UInt32.new(width), UInt32.new(height))
      nil
    end

    def vadjustment=(adjustment)
      LibGtk.layout_set_vadjustment(to_unsafe.as(LibGtk::Layout*), adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      nil
    end

  end
end

