module Gtk
  class CellAreaContext < GObject::Object
    def initialize(@gtk_cell_area_context)
    end

    def to_unsafe
      @gtk_cell_area_context.not_nil!
    end






    def allocate(width, height)
      __return_value = LibGtk.cell_area_context_allocate((to_unsafe as LibGtk::CellAreaContext*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def allocation(width, height)
      __return_value = LibGtk.cell_area_context_get_allocation((to_unsafe as LibGtk::CellAreaContext*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def area
      __return_value = LibGtk.cell_area_context_get_area((to_unsafe as LibGtk::CellAreaContext*))
      Gtk::CellArea.new(__return_value)
    end

    def preferred_height(minimum_height, natural_height)
      __return_value = LibGtk.cell_area_context_get_preferred_height((to_unsafe as LibGtk::CellAreaContext*), Int32.new(minimum_height), Int32.new(natural_height))
      __return_value
    end

    def preferred_height_for_width(width, minimum_height, natural_height)
      __return_value = LibGtk.cell_area_context_get_preferred_height_for_width((to_unsafe as LibGtk::CellAreaContext*), Int32.new(width), Int32.new(minimum_height), Int32.new(natural_height))
      __return_value
    end

    def preferred_width(minimum_width, natural_width)
      __return_value = LibGtk.cell_area_context_get_preferred_width((to_unsafe as LibGtk::CellAreaContext*), Int32.new(minimum_width), Int32.new(natural_width))
      __return_value
    end

    def preferred_width_for_height(height, minimum_width, natural_width)
      __return_value = LibGtk.cell_area_context_get_preferred_width_for_height((to_unsafe as LibGtk::CellAreaContext*), Int32.new(height), Int32.new(minimum_width), Int32.new(natural_width))
      __return_value
    end

    def push_preferred_height(minimum_height, natural_height)
      __return_value = LibGtk.cell_area_context_push_preferred_height((to_unsafe as LibGtk::CellAreaContext*), Int32.new(minimum_height), Int32.new(natural_height))
      __return_value
    end

    def push_preferred_width(minimum_width, natural_width)
      __return_value = LibGtk.cell_area_context_push_preferred_width((to_unsafe as LibGtk::CellAreaContext*), Int32.new(minimum_width), Int32.new(natural_width))
      __return_value
    end

    def reset
      __return_value = LibGtk.cell_area_context_reset((to_unsafe as LibGtk::CellAreaContext*))
      __return_value
    end

  end
end

