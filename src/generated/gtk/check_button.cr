require "./toggle_button"

module Gtk
  class CheckButton < ToggleButton
    @gtk_check_button : LibGtk::CheckButton*?
    def initialize(@gtk_check_button : LibGtk::CheckButton*)
    end

    def to_unsafe
      @gtk_check_button.not_nil!
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

