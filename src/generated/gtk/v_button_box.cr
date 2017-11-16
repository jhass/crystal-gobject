require "./button_box"

module Gtk
  class VButtonBox < ButtonBox
    @pointer : Void*
    def initialize(pointer : LibGtk::VButtonBox*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::VButtonBox*)
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

