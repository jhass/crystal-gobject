require "./container"

module Gtk
  class Layout < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::Layout*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Layout*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Scrollable
    def height
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "height", gvalue)
      gvalue
    end

    def width
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "width", gvalue)
      gvalue
    end

    def self.new(hadjustment, vadjustment) : self
      __return_value = LibGtk.layout_new(hadjustment ? hadjustment.to_unsafe.as(LibGtk::Adjustment*) : nil, vadjustment ? vadjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def bin_window
      __return_value = LibGtk.layout_get_bin_window(@pointer.as(LibGtk::Layout*))
      Gdk::Window.new(__return_value)
    end

    def hadjustment
      __return_value = LibGtk.layout_get_hadjustment(@pointer.as(LibGtk::Layout*))
      Gtk::Adjustment.new(__return_value)
    end

    def size(width, height)
      LibGtk.layout_get_size(@pointer.as(LibGtk::Layout*), width, height)
      nil
    end

    def vadjustment
      __return_value = LibGtk.layout_get_vadjustment(@pointer.as(LibGtk::Layout*))
      Gtk::Adjustment.new(__return_value)
    end

    def move(child_widget, x, y)
      LibGtk.layout_move(@pointer.as(LibGtk::Layout*), child_widget.to_unsafe.as(LibGtk::Widget*), Int32.new(x), Int32.new(y))
      nil
    end

    def put(child_widget, x, y)
      LibGtk.layout_put(@pointer.as(LibGtk::Layout*), child_widget.to_unsafe.as(LibGtk::Widget*), Int32.new(x), Int32.new(y))
      nil
    end

    def hadjustment=(adjustment)
      LibGtk.layout_set_hadjustment(@pointer.as(LibGtk::Layout*), adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      nil
    end

    def set_size(width, height)
      LibGtk.layout_set_size(@pointer.as(LibGtk::Layout*), UInt32.new(width), UInt32.new(height))
      nil
    end

    def vadjustment=(adjustment)
      LibGtk.layout_set_vadjustment(@pointer.as(LibGtk::Layout*), adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      nil
    end

  end
end

