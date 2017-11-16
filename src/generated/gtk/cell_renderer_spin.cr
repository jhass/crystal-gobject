require "./cell_renderer_text"

module Gtk
  class CellRendererSpin < CellRendererText
    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererSpin*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererSpin*)
    end

    def adjustment
      __return_value = LibGtk.cell_renderer_spin_get_adjustment(to_unsafe.as(LibGtk::CellRendererSpin*))
      Gtk::Adjustment.new(__return_value)
    end

    def climb_rate
      __return_value = LibGtk.cell_renderer_spin_get_climb_rate(to_unsafe.as(LibGtk::CellRendererSpin*))
      __return_value
    end

    def digits
      __return_value = LibGtk.cell_renderer_spin_get_digits(to_unsafe.as(LibGtk::CellRendererSpin*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_spin_new
      cast Gtk::CellRenderer.new(__return_value)
    end

  end
end

