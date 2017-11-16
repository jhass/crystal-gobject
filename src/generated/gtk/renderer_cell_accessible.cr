require "./cell_accessible"

module Gtk
  class RendererCellAccessible < CellAccessible
    @pointer : Void*
    def initialize(pointer : LibGtk::RendererCellAccessible*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RendererCellAccessible*)
    end

    # Implements Action
    # Implements Component
    def renderer
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "renderer", gvalue)
      Gtk::CellRenderer.cast(gvalue.object)
    end

    def self.new(renderer) : self
      __return_value = LibGtk.renderer_cell_accessible_new(renderer.to_unsafe.as(LibGtk::CellRenderer*))
      cast Atk::Object.new(__return_value)
    end

  end
end

