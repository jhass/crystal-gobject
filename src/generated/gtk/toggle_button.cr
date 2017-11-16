require "./button"

module Gtk
  class ToggleButton < Button
    @pointer : Void*
    def initialize(pointer : LibGtk::ToggleButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToggleButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def active
      __return_value = LibGtk.toggle_button_get_active(to_unsafe.as(LibGtk::ToggleButton*))
      __return_value
    end

    def draw_indicator
      __return_value = LibGtk.toggle_button_get_draw_indicator(to_unsafe.as(LibGtk::ToggleButton*))
      __return_value
    end

    def inconsistent
      __return_value = LibGtk.toggle_button_get_inconsistent(to_unsafe.as(LibGtk::ToggleButton*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.toggle_button_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_label(label) : self
      __return_value = LibGtk.toggle_button_new_with_label(label.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(label) : self
      __return_value = LibGtk.toggle_button_new_with_mnemonic(label.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def active
      __return_value = LibGtk.toggle_button_get_active(@pointer.as(LibGtk::ToggleButton*))
      __return_value
    end

    def inconsistent
      __return_value = LibGtk.toggle_button_get_inconsistent(@pointer.as(LibGtk::ToggleButton*))
      __return_value
    end

    def mode
      __return_value = LibGtk.toggle_button_get_mode(@pointer.as(LibGtk::ToggleButton*))
      __return_value
    end

    def active=(is_active)
      LibGtk.toggle_button_set_active(@pointer.as(LibGtk::ToggleButton*), is_active)
      nil
    end

    def inconsistent=(setting)
      LibGtk.toggle_button_set_inconsistent(@pointer.as(LibGtk::ToggleButton*), setting)
      nil
    end

    def mode=(draw_indicator)
      LibGtk.toggle_button_set_mode(@pointer.as(LibGtk::ToggleButton*), draw_indicator)
      nil
    end

    def toggled
      LibGtk.toggle_button_toggled(@pointer.as(LibGtk::ToggleButton*))
      nil
    end

    alias ToggledSignal = ToggleButton ->
    def on_toggled(&__block : ToggledSignal)
      __callback = ->(_arg0 : LibGtk::ToggleButton*) {
       __return_value = __block.call(ToggleButton.new(_arg0))
       __return_value
      }
      connect("toggled", __callback)
    end

  end
end

