require "./cell_renderer"

module Gtk
  class CellRendererSpinner < CellRenderer
    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererSpinner*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererSpinner*)
    end

    def active
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "active", gvalue)
      gvalue.boolean
    end

    def pulse
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pulse", gvalue)
      gvalue
    end

    def size
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "size", gvalue)
      gvalue.enum
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_spinner_new
      cast Gtk::CellRenderer.new(__return_value)
    end

  end
end

