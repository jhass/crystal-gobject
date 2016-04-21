require "./button_box"

module Gtk
  class VButtonBox < ButtonBox
    @gtk_v_button_box : LibGtk::VButtonBox*?
    def initialize(@gtk_v_button_box : LibGtk::VButtonBox*)
    end

    def to_unsafe
      @gtk_v_button_box.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new : self
      __return_value = LibGtk.v_button_box_new
      cast Gtk::Widget.new(__return_value)
    end

  end
end

