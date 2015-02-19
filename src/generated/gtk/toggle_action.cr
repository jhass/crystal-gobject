require "./action"

module Gtk
  class ToggleAction < Action
    def initialize @gtk_toggle_action
    end

    def to_unsafe
      @gtk_toggle_action.not_nil!
    end

    # Implements Buildable
    def active=(__value)
      LibGtk.toggle_action_set_active((to_unsafe as LibGtk::ToggleAction*), Bool.cast(__value))
    end

    def draw_as_radio=(__value)
      LibGtk.toggle_action_set_draw_as_radio((to_unsafe as LibGtk::ToggleAction*), Bool.cast(__value))
    end

    def self.new_internal(name, label, tooltip, stock_id)
      __return_value = LibGtk.toggle_action_new(name, label, tooltip, stock_id)
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
      __return_value = LibGtk.toggle_action_set_active((to_unsafe as LibGtk::ToggleAction*), Bool.cast(is_active))
      __return_value
    end

    def draw_as_radio=(draw_as_radio)
      __return_value = LibGtk.toggle_action_set_draw_as_radio((to_unsafe as LibGtk::ToggleAction*), Bool.cast(draw_as_radio))
      __return_value
    end

    def toggled
      __return_value = LibGtk.toggle_action_toggled((to_unsafe as LibGtk::ToggleAction*))
      __return_value
    end

  end
end

