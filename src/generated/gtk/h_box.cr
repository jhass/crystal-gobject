require "./box"

module Gtk
  class HBox < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::HBox*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::HBox*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new(homogeneous, spacing) : self
      __return_value = LibGtk.h_box_new(homogeneous, Int32.new(spacing))
      cast Gtk::Widget.new(__return_value)
    end

  end
end

