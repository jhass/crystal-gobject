require "./toggle_action"

module Gtk
  class RadioAction < ToggleAction
    def initialize @gtk_radio_action
    end

    def to_unsafe
      @gtk_radio_action.not_nil!
    end

    # Implements Buildable
    def current_value=(__value)
      LibGtk.radio_action_set_current_value((to_unsafe as LibGtk::RadioAction*), Int32.cast(__value))
    end

    def group=(__value)
      LibGtk.radio_action_set_group((to_unsafe as LibGtk::RadioAction*), __value)
    end

    def value=(__value)
      LibGtk.radio_action_set_value((to_unsafe as LibGtk::RadioAction*), Int32.cast(__value))
    end

    def self.new_internal(name, label, tooltip, stock_id, value)
      __return_value = LibGtk.radio_action_new(name, label, tooltip, stock_id, Int32.cast(value))
      Gtk::RadioAction.new(__return_value)
    end

    def current_value
      __return_value = LibGtk.radio_action_get_current_value((to_unsafe as LibGtk::RadioAction*))
      __return_value
    end

    def group
      __return_value = LibGtk.radio_action_get_group((to_unsafe as LibGtk::RadioAction*))
      __return_value
    end

    def join_group(group_source)
      __return_value = LibGtk.radio_action_join_group((to_unsafe as LibGtk::RadioAction*), (group_source.to_unsafe as LibGtk::RadioAction*))
      __return_value
    end

    def current_value=(current_value)
      __return_value = LibGtk.radio_action_set_current_value((to_unsafe as LibGtk::RadioAction*), Int32.cast(current_value))
      __return_value
    end

    def group=(group)
      __return_value = LibGtk.radio_action_set_group((to_unsafe as LibGtk::RadioAction*), group)
      __return_value
    end

  end
end

