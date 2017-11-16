module Gtk
  class CellAreaContext < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::CellAreaContext*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellAreaContext*)
    end

    def area
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "area", gvalue)
      Gtk::CellArea.cast(gvalue.object)
    end

    def minimum_height
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "minimum_height", gvalue)
      gvalue
    end

    def minimum_width
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "minimum_width", gvalue)
      gvalue
    end

    def natural_height
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "natural_height", gvalue)
      gvalue
    end

    def natural_width
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "natural_width", gvalue)
      gvalue
    end

    def allocate(width, height)
      LibGtk.cell_area_context_allocate(@pointer.as(LibGtk::CellAreaContext*), Int32.new(width), Int32.new(height))
      nil
    end

    def allocation(width, height)
      LibGtk.cell_area_context_get_allocation(@pointer.as(LibGtk::CellAreaContext*), width, height)
      nil
    end

    def area
      __return_value = LibGtk.cell_area_context_get_area(@pointer.as(LibGtk::CellAreaContext*))
      Gtk::CellArea.new(__return_value)
    end

    def preferred_height(minimum_height, natural_height)
      LibGtk.cell_area_context_get_preferred_height(@pointer.as(LibGtk::CellAreaContext*), minimum_height, natural_height)
      nil
    end

    def preferred_height_for_width(width, minimum_height, natural_height)
      LibGtk.cell_area_context_get_preferred_height_for_width(@pointer.as(LibGtk::CellAreaContext*), Int32.new(width), minimum_height, natural_height)
      nil
    end

    def preferred_width(minimum_width, natural_width)
      LibGtk.cell_area_context_get_preferred_width(@pointer.as(LibGtk::CellAreaContext*), minimum_width, natural_width)
      nil
    end

    def preferred_width_for_height(height, minimum_width, natural_width)
      LibGtk.cell_area_context_get_preferred_width_for_height(@pointer.as(LibGtk::CellAreaContext*), Int32.new(height), minimum_width, natural_width)
      nil
    end

    def push_preferred_height(minimum_height, natural_height)
      LibGtk.cell_area_context_push_preferred_height(@pointer.as(LibGtk::CellAreaContext*), Int32.new(minimum_height), Int32.new(natural_height))
      nil
    end

    def push_preferred_width(minimum_width, natural_width)
      LibGtk.cell_area_context_push_preferred_width(@pointer.as(LibGtk::CellAreaContext*), Int32.new(minimum_width), Int32.new(natural_width))
      nil
    end

    def reset
      LibGtk.cell_area_context_reset(@pointer.as(LibGtk::CellAreaContext*))
      nil
    end

  end
end

