require "./container"

module Gtk
  class Table < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::Table*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Table*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def column_spacing
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "column_spacing", gvalue)
      gvalue
    end

    def homogeneous
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "homogeneous", gvalue)
      gvalue.boolean
    end

    def n_columns
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "n_columns", gvalue)
      gvalue
    end

    def n_rows
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "n_rows", gvalue)
      gvalue
    end

    def row_spacing
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "row_spacing", gvalue)
      gvalue
    end

    def self.new(rows, columns, homogeneous) : self
      __return_value = LibGtk.table_new(UInt32.new(rows), UInt32.new(columns), homogeneous)
      cast Gtk::Widget.new(__return_value)
    end

    def attach(child, left_attach, right_attach, top_attach, bottom_attach, xoptions : Gtk::AttachOptions, yoptions : Gtk::AttachOptions, xpadding, ypadding)
      LibGtk.table_attach(@pointer.as(LibGtk::Table*), child.to_unsafe.as(LibGtk::Widget*), UInt32.new(left_attach), UInt32.new(right_attach), UInt32.new(top_attach), UInt32.new(bottom_attach), xoptions, yoptions, UInt32.new(xpadding), UInt32.new(ypadding))
      nil
    end

    def attach_defaults(widget, left_attach, right_attach, top_attach, bottom_attach)
      LibGtk.table_attach_defaults(@pointer.as(LibGtk::Table*), widget.to_unsafe.as(LibGtk::Widget*), UInt32.new(left_attach), UInt32.new(right_attach), UInt32.new(top_attach), UInt32.new(bottom_attach))
      nil
    end

    def col_spacing(column)
      __return_value = LibGtk.table_get_col_spacing(@pointer.as(LibGtk::Table*), UInt32.new(column))
      __return_value
    end

    def default_col_spacing
      __return_value = LibGtk.table_get_default_col_spacing(@pointer.as(LibGtk::Table*))
      __return_value
    end

    def default_row_spacing
      __return_value = LibGtk.table_get_default_row_spacing(@pointer.as(LibGtk::Table*))
      __return_value
    end

    def homogeneous
      __return_value = LibGtk.table_get_homogeneous(@pointer.as(LibGtk::Table*))
      __return_value
    end

    def row_spacing(row)
      __return_value = LibGtk.table_get_row_spacing(@pointer.as(LibGtk::Table*), UInt32.new(row))
      __return_value
    end

    def size(rows, columns)
      LibGtk.table_get_size(@pointer.as(LibGtk::Table*), rows, columns)
      nil
    end

    def resize(rows, columns)
      LibGtk.table_resize(@pointer.as(LibGtk::Table*), UInt32.new(rows), UInt32.new(columns))
      nil
    end

    def set_col_spacing(column, spacing)
      LibGtk.table_set_col_spacing(@pointer.as(LibGtk::Table*), UInt32.new(column), UInt32.new(spacing))
      nil
    end

    def col_spacings=(spacing)
      LibGtk.table_set_col_spacings(@pointer.as(LibGtk::Table*), UInt32.new(spacing))
      nil
    end

    def homogeneous=(homogeneous)
      LibGtk.table_set_homogeneous(@pointer.as(LibGtk::Table*), homogeneous)
      nil
    end

    def set_row_spacing(row, spacing)
      LibGtk.table_set_row_spacing(@pointer.as(LibGtk::Table*), UInt32.new(row), UInt32.new(spacing))
      nil
    end

    def row_spacings=(spacing)
      LibGtk.table_set_row_spacings(@pointer.as(LibGtk::Table*), UInt32.new(spacing))
      nil
    end

  end
end

