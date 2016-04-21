require "./box"

module Gtk
  class HBox < Box
    @gtk_h_box : LibGtk::HBox*?
    def initialize(@gtk_h_box : LibGtk::HBox*)
    end

    def to_unsafe
      @gtk_h_box.not_nil!
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

