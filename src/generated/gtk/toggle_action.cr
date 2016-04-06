require "./action"

module Gtk
  class ToggleAction < Action
    def initialize(@gtk_toggle_action)
    end

    def to_unsafe
      @gtk_toggle_action.not_nil!
    end

    # Implements Buildable


    def self.new_internal(name, label, tooltip, stock_id)
      __return_value = LibGtk.toggle_action_new(name, label && label, tooltip && tooltip, stock_id && stock_id)
      Gtk::ToggleAction.new(__return_value)
    end

    def active
      __return_value = LibGtk.toggle_action_get_active((to_unsafe as LibGtk::ToggleAction*))
      __return_value
    end

    def draw_as_radio
      __return_value = LibGtk.toggle_action_get_draw_as_radio((to_unsafe as LibGtk::ToggleAction*))
      __return_value
    end

    def active=(is_active)
      __return_value = LibGtk.toggle_action_set_active((to_unsafe as LibGtk::ToggleAction*), is_active)
      __return_value
    end

    def draw_as_radio=(draw_as_radio)
      __return_value = LibGtk.toggle_action_set_draw_as_radio((to_unsafe as LibGtk::ToggleAction*), draw_as_radio)
      __return_value
    end

    def toggled
      __return_value = LibGtk.toggle_action_toggled((to_unsafe as LibGtk::ToggleAction*))
      __return_value
    end

    alias ToggledSignal = ToggleAction -> 
    def on_toggled(&__block : ToggledSignal)
      __callback = ->(_arg0 : LibGtk::ToggleAction*) {
       __return_value = __block.call(ToggleAction.new(_arg0))
       __return_value
      }
      connect("toggled", __callback)
    end

  end
end

