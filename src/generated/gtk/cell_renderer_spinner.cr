require "./cell_renderer"

module Gtk
  class CellRendererSpinner < CellRenderer
    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererSpinner*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererSpinner*)
    end

    def active
      __return_value = LibGtk.cell_renderer_spinner_get_active(to_unsafe.as(LibGtk::CellRendererSpinner*))
      __return_value
    end

    def pulse
      __return_value = LibGtk.cell_renderer_spinner_get_pulse(to_unsafe.as(LibGtk::CellRendererSpinner*))
      __return_value
    end

    def size
      __return_value = LibGtk.cell_renderer_spinner_get_size(to_unsafe.as(LibGtk::CellRendererSpinner*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_spinner_new
      cast Gtk::CellRenderer.new(__return_value)
    end

  end
end

