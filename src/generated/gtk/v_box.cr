require "./box"

module Gtk
  class VBox < Box
    def initialize(@gtk_v_box)
    end

    def to_unsafe
      @gtk_v_box.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new_internal(homogeneous, spacing)
      __return_value = LibGtk.v_box_new(homogeneous, Int32.new(spacing))
      Gtk::Widget.new(__return_value)
    end

  end
end

