require "./scale"

module Gtk
  class HScale < Scale
    @pointer : Void*
    def initialize(pointer : LibGtk::HScale*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::HScale*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new(adjustment) : self
      __return_value = LibGtk.h_scale_new(adjustment ? adjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_range(min, max, step) : self
      __return_value = LibGtk.h_scale_new_with_range(Float64.new(min), Float64.new(max), Float64.new(step))
      cast Gtk::Widget.new(__return_value)
    end

  end
end

