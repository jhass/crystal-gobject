require "./container"

module Gtk
  class Grid < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::Grid*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Grid*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def baseline_row
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "baseline_row", gvalue)
      gvalue
    end

    def column_homogeneous
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "column_homogeneous", gvalue)
      gvalue.boolean
    end

    def column_spacing
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "column_spacing", gvalue)
      gvalue
    end

    def row_homogeneous
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "row_homogeneous", gvalue)
      gvalue.boolean
    end

    def row_spacing
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "row_spacing", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.grid_new
      cast Gtk::Widget.new(__return_value)
    end

    def attach(child, left, top, width, height)
      LibGtk.grid_attach(@pointer.as(LibGtk::Grid*), child.to_unsafe.as(LibGtk::Widget*), Int32.new(left), Int32.new(top), Int32.new(width), Int32.new(height))
      nil
    end

    def attach_next_to(child, sibling, side : Gtk::PositionType, width, height)
      LibGtk.grid_attach_next_to(@pointer.as(LibGtk::Grid*), child.to_unsafe.as(LibGtk::Widget*), sibling ? sibling.to_unsafe.as(LibGtk::Widget*) : nil, side, Int32.new(width), Int32.new(height))
      nil
    end

    def baseline_row
      __return_value = LibGtk.grid_get_baseline_row(@pointer.as(LibGtk::Grid*))
      __return_value
    end

    def child_at(left, top)
      __return_value = LibGtk.grid_get_child_at(@pointer.as(LibGtk::Grid*), Int32.new(left), Int32.new(top))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def column_homogeneous
      __return_value = LibGtk.grid_get_column_homogeneous(@pointer.as(LibGtk::Grid*))
      __return_value
    end

    def column_spacing
      __return_value = LibGtk.grid_get_column_spacing(@pointer.as(LibGtk::Grid*))
      __return_value
    end

    def row_baseline_position(row)
      __return_value = LibGtk.grid_get_row_baseline_position(@pointer.as(LibGtk::Grid*), Int32.new(row))
      __return_value
    end

    def row_homogeneous
      __return_value = LibGtk.grid_get_row_homogeneous(@pointer.as(LibGtk::Grid*))
      __return_value
    end

    def row_spacing
      __return_value = LibGtk.grid_get_row_spacing(@pointer.as(LibGtk::Grid*))
      __return_value
    end

    def insert_column(position)
      LibGtk.grid_insert_column(@pointer.as(LibGtk::Grid*), Int32.new(position))
      nil
    end

    def insert_next_to(sibling, side : Gtk::PositionType)
      LibGtk.grid_insert_next_to(@pointer.as(LibGtk::Grid*), sibling.to_unsafe.as(LibGtk::Widget*), side)
      nil
    end

    def insert_row(position)
      LibGtk.grid_insert_row(@pointer.as(LibGtk::Grid*), Int32.new(position))
      nil
    end

    def remove_column(position)
      LibGtk.grid_remove_column(@pointer.as(LibGtk::Grid*), Int32.new(position))
      nil
    end

    def remove_row(position)
      LibGtk.grid_remove_row(@pointer.as(LibGtk::Grid*), Int32.new(position))
      nil
    end

    def baseline_row=(row)
      LibGtk.grid_set_baseline_row(@pointer.as(LibGtk::Grid*), Int32.new(row))
      nil
    end

    def column_homogeneous=(homogeneous)
      LibGtk.grid_set_column_homogeneous(@pointer.as(LibGtk::Grid*), homogeneous)
      nil
    end

    def column_spacing=(spacing)
      LibGtk.grid_set_column_spacing(@pointer.as(LibGtk::Grid*), UInt32.new(spacing))
      nil
    end

    def set_row_baseline_position(row, pos : Gtk::BaselinePosition)
      LibGtk.grid_set_row_baseline_position(@pointer.as(LibGtk::Grid*), Int32.new(row), pos)
      nil
    end

    def row_homogeneous=(homogeneous)
      LibGtk.grid_set_row_homogeneous(@pointer.as(LibGtk::Grid*), homogeneous)
      nil
    end

    def row_spacing=(spacing)
      LibGtk.grid_set_row_spacing(@pointer.as(LibGtk::Grid*), UInt32.new(spacing))
      nil
    end

  end
end

