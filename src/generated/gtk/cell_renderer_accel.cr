require "./cell_renderer_text"

module Gtk
  class CellRendererAccel < CellRendererText
    def initialize @gtk_cell_renderer_accel
    end

    def to_unsafe
      @gtk_cell_renderer_accel.not_nil!
    end

    def accel_key=(__value)
      LibGtk.cell_renderer_accel_set_accel_key((to_unsafe as LibGtk::CellRendererAccel*), UInt32.cast(__value))
    end

    def accel_mode=(__value)
      LibGtk.cell_renderer_accel_set_accel_mode((to_unsafe as LibGtk::CellRendererAccel*), __value)
    end

    def accel_mods=(__value)
      LibGtk.cell_renderer_accel_set_accel_mods((to_unsafe as LibGtk::CellRendererAccel*), __value)
    end

    def keycode=(__value)
      LibGtk.cell_renderer_accel_set_keycode((to_unsafe as LibGtk::CellRendererAccel*), UInt32.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.cell_renderer_accel_new
      Gtk::CellRenderer.new(__return_value)
    end

  end
end

