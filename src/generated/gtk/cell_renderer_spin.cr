require "./cell_renderer_text"

module Gtk
  class CellRendererSpin < CellRendererText
    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererSpin*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererSpin*)
    end

    def adjustment
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "adjustment", gvalue)
      Gtk::Adjustment.cast(gvalue.object)
    end

    def climb_rate
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "climb_rate", gvalue)
      gvalue
    end

    def digits
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "digits", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_spin_new
      cast Gtk::CellRenderer.new(__return_value)
    end

  end
end

