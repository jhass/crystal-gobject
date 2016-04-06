require "./toggle_button"

module Gtk
  class CheckButton < ToggleButton
    def initialize(@gtk_check_button)
    end

    def to_unsafe
      @gtk_check_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.check_button_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_label(label)
      __return_value = LibGtk.check_button_new_with_label(label)
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(label)
      __return_value = LibGtk.check_button_new_with_mnemonic(label)
      Gtk::Widget.new(__return_value)
    end

  end
end

