require "./cell_area"

module Gtk
  class CellAreaBox < CellArea
    def initialize(@gtk_cell_area_box)
    end

    def to_unsafe
      @gtk_cell_area_box.not_nil!
    end

    # Implements Buildable
    # Implements CellLayout
    # Implements Orientable

    def self.new_internal
      __return_value = LibGtk.cell_area_box_new
      Gtk::CellArea.new(__return_value)
    end

    def spacing
      __return_value = LibGtk.cell_area_box_get_spacing((to_unsafe as LibGtk::CellAreaBox*))
      __return_value
    end

    def pack_end(renderer, expand, align, fixed)
      __return_value = LibGtk.cell_area_box_pack_end((to_unsafe as LibGtk::CellAreaBox*), (renderer.to_unsafe as LibGtk::CellRenderer*), expand, align, fixed)
      __return_value
    end

    def pack_start(renderer, expand, align, fixed)
      __return_value = LibGtk.cell_area_box_pack_start((to_unsafe as LibGtk::CellAreaBox*), (renderer.to_unsafe as LibGtk::CellRenderer*), expand, align, fixed)
      __return_value
    end

    def spacing=(spacing)
      __return_value = LibGtk.cell_area_box_set_spacing((to_unsafe as LibGtk::CellAreaBox*), Int32.new(spacing))
      __return_value
    end

  end
end

