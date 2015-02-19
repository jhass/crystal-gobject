require "./cell_renderer_text"

module Gtk
  class CellRendererSpin < CellRendererText
    def initialize @gtk_cell_renderer_spin
    end

    def to_unsafe
      @gtk_cell_renderer_spin.not_nil!
    end

    def adjustment=(__value)
      LibGtk.cell_renderer_spin_set_adjustment((to_unsafe as LibGtk::CellRendererSpin*), __value)
    end

    def climb_rate=(__value)
      LibGtk.cell_renderer_spin_set_climb_rate((to_unsafe as LibGtk::CellRendererSpin*), Float64.cast(__value))
    end

    def digits=(__value)
      LibGtk.cell_renderer_spin_set_digits((to_unsafe as LibGtk::CellRendererSpin*), UInt32.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.cell_renderer_spin_new
      Gtk::CellRenderer.new(__return_value)
    end

  end
end

