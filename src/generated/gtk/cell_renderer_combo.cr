require "./cell_renderer_text"

module Gtk
  class CellRendererCombo < CellRendererText
    def initialize @gtk_cell_renderer_combo
    end

    def to_unsafe
      @gtk_cell_renderer_combo.not_nil!
    end




    def self.new_internal
      __return_value = LibGtk.cell_renderer_combo_new
      Gtk::CellRenderer.new(__return_value)
    end

  end
end

