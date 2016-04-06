require "./button"

module Gtk
  class ToggleButton < Button
    def initialize(@gtk_toggle_button)
    end

    def to_unsafe
      @gtk_toggle_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable



    def self.new_internal
      __return_value = LibGtk.toggle_button_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_label(label)
      __return_value = LibGtk.toggle_button_new_with_label(label)
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(label)
      __return_value = LibGtk.toggle_button_new_with_mnemonic(label)
      Gtk::Widget.new(__return_value)
    end

    def active
      __return_value = LibGtk.toggle_button_get_active((to_unsafe as LibGtk::ToggleButton*))
      __return_value
    end

    def inconsistent
      __return_value = LibGtk.toggle_button_get_inconsistent((to_unsafe as LibGtk::ToggleButton*))
      __return_value
    end

    def mode
      __return_value = LibGtk.toggle_button_get_mode((to_unsafe as LibGtk::ToggleButton*))
      __return_value
    end

    def active=(is_active)
      __return_value = LibGtk.toggle_button_set_active((to_unsafe as LibGtk::ToggleButton*), is_active)
      __return_value
    end

    def inconsistent=(setting)
      __return_value = LibGtk.toggle_button_set_inconsistent((to_unsafe as LibGtk::ToggleButton*), setting)
      __return_value
    end

    def mode=(draw_indicator)
      __return_value = LibGtk.toggle_button_set_mode((to_unsafe as LibGtk::ToggleButton*), draw_indicator)
      __return_value
    end

    def toggled
      __return_value = LibGtk.toggle_button_toggled((to_unsafe as LibGtk::ToggleButton*))
      __return_value
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

