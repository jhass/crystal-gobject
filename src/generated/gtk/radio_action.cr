require "./toggle_action"

module Gtk
  class RadioAction < ToggleAction
    def initialize @gtk_radio_action
    end

    def to_unsafe
      @gtk_radio_action.not_nil!
    end

    # Implements Buildable



    def self.new_internal(name, label, tooltip, stock_id, value)
      __return_value = LibGtk.radio_action_new(name, label && label, tooltip && tooltip, stock_id && stock_id, Int32.cast(value))
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
      __return_value = LibGtk.radio_action_join_group((to_unsafe as LibGtk::RadioAction*), group_source && (group_source.to_unsafe as LibGtk::RadioAction*))
      __return_value
    end

    def current_value=(current_value)
      __return_value = LibGtk.radio_action_set_current_value((to_unsafe as LibGtk::RadioAction*), Int32.cast(current_value))
      __return_value
    end

    def group=(group)
      __return_value = LibGtk.radio_action_set_group((to_unsafe as LibGtk::RadioAction*), group && group)
      __return_value
    end

  end
end

