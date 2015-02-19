require "./cell_renderer_text"

module Gtk
  class CellRendererCombo < CellRendererText
    def initialize @gtk_cell_renderer_combo
    end

    def to_unsafe
      @gtk_cell_renderer_combo.not_nil!
    end

    def has_entry=(__value)
      LibGtk.cell_renderer_combo_set_has_entry((to_unsafe as LibGtk::CellRendererCombo*), Bool.cast(__value))
    end

    def model=(__value)
      LibGtk.cell_renderer_combo_set_model((to_unsafe as LibGtk::CellRendererCombo*), __value)
    end

    def text_column=(__value)
      LibGtk.cell_renderer_combo_set_text_column((to_unsafe as LibGtk::CellRendererCombo*), Int32.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.cell_renderer_combo_new
      Gtk::CellRenderer.new(__return_value)
    end

  end
end

