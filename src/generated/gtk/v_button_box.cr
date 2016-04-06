require "./button_box"

module Gtk
  class VButtonBox < ButtonBox
    def initialize(@gtk_v_button_box)
    end

    def to_unsafe
      @gtk_v_button_box.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new_internal
      __return_value = LibGtk.v_button_box_new
      Gtk::Widget.new(__return_value)
    end

  end
end

