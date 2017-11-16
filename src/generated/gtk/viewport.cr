require "./bin"

module Gtk
  class Viewport < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::Viewport*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Viewport*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Scrollable
    def shadow_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "shadow_type", gvalue)
      gvalue.enum
    end

    def self.new(hadjustment, vadjustment) : self
      __return_value = LibGtk.viewport_new(hadjustment ? hadjustment.to_unsafe.as(LibGtk::Adjustment*) : nil, vadjustment ? vadjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def bin_window
      __return_value = LibGtk.viewport_get_bin_window(@pointer.as(LibGtk::Viewport*))
      Gdk::Window.new(__return_value)
    end

    def hadjustment
      __return_value = LibGtk.viewport_get_hadjustment(@pointer.as(LibGtk::Viewport*))
      Gtk::Adjustment.new(__return_value)
    end

    def shadow_type
      __return_value = LibGtk.viewport_get_shadow_type(@pointer.as(LibGtk::Viewport*))
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.viewport_get_vadjustment(@pointer.as(LibGtk::Viewport*))
      Gtk::Adjustment.new(__return_value)
    end

    def view_window
      __return_value = LibGtk.viewport_get_view_window(@pointer.as(LibGtk::Viewport*))
      Gdk::Window.new(__return_value)
    end

    def hadjustment=(adjustment)
      LibGtk.viewport_set_hadjustment(@pointer.as(LibGtk::Viewport*), adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      nil
    end

    def shadow_type=(type : Gtk::ShadowType)
      LibGtk.viewport_set_shadow_type(@pointer.as(LibGtk::Viewport*), type)
      nil
    end

    def vadjustment=(adjustment)
      LibGtk.viewport_set_vadjustment(@pointer.as(LibGtk::Viewport*), adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      nil
    end

  end
end

