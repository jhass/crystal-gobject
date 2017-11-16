require "./cell_area"

module Gtk
  class CellAreaBox < CellArea
    @pointer : Void*
    def initialize(pointer : LibGtk::CellAreaBox*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellAreaBox*)
    end

    # Implements Buildable
    # Implements CellLayout
    # Implements Orientable
    def spacing
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "spacing", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.cell_area_box_new
      cast Gtk::CellArea.new(__return_value)
    end

    def spacing
      __return_value = LibGtk.cell_area_box_get_spacing(@pointer.as(LibGtk::CellAreaBox*))
      __return_value
    end

    def pack_end(renderer, expand, align, fixed)
      LibGtk.cell_area_box_pack_end(@pointer.as(LibGtk::CellAreaBox*), renderer.to_unsafe.as(LibGtk::CellRenderer*), expand, align, fixed)
      nil
    end

    def pack_start(renderer, expand, align, fixed)
      LibGtk.cell_area_box_pack_start(@pointer.as(LibGtk::CellAreaBox*), renderer.to_unsafe.as(LibGtk::CellRenderer*), expand, align, fixed)
      nil
    end

    def spacing=(spacing)
      LibGtk.cell_area_box_set_spacing(@pointer.as(LibGtk::CellAreaBox*), Int32.new(spacing))
      nil
    end

  end
end

