require "./box"

module Gtk
  class HBox < Box
    def initialize(@gtk_h_box)
    end

    def to_unsafe
      @gtk_h_box.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new_internal(homogeneous, spacing)
      __return_value = LibGtk.h_box_new(homogeneous, Int32.new(spacing))
      Gtk::Widget.new(__return_value)
    end

  end
end

