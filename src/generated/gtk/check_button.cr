require "./toggle_button"

module Gtk
  class CheckButton < ToggleButton
    @pointer : Void*
    def initialize(pointer : LibGtk::CheckButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CheckButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.check_button_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_label(label) : self
      __return_value = LibGtk.check_button_new_with_label(label.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(label) : self
      __return_value = LibGtk.check_button_new_with_mnemonic(label.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

  end
end

