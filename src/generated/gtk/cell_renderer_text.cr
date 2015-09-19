require "./cell_renderer"

module Gtk
  class CellRendererText < CellRenderer
    def initialize @gtk_cell_renderer_text
    end

    def to_unsafe
      @gtk_cell_renderer_text.not_nil!
    end

















































    def self.new_internal
      __return_value = LibGtk.cell_renderer_text_new
      Gtk::CellRenderer.new(__return_value)
    end

    def fixed_height_from_font=(number_of_rows)
      __return_value = LibGtk.cell_renderer_text_set_fixed_height_from_font((to_unsafe as LibGtk::CellRendererText*), Int32.new(number_of_rows))
      __return_value
    end

  end
end

