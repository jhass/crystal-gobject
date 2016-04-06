require "./scale"

module Gtk
  class VScale < Scale
    def initialize(@gtk_v_scale)
    end

    def to_unsafe
      @gtk_v_scale.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new_internal(adjustment)
      __return_value = LibGtk.v_scale_new((adjustment.to_unsafe as LibGtk::Adjustment*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_range(min, max, step)
      __return_value = LibGtk.v_scale_new_with_range(Float64.new(min), Float64.new(max), Float64.new(step))
      Gtk::Widget.new(__return_value)
    end

  end
end

