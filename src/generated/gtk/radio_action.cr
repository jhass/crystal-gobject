require "./toggle_action"

module Gtk
  class RadioAction < ToggleAction
    def initialize(@gtk_radio_action)
    end

    def to_unsafe
      @gtk_radio_action.not_nil!
    end

    # Implements Buildable



    def self.new_internal(name, label, tooltip, stock_id, value)
      __return_value = LibGtk.radio_action_new(name, label && label, tooltip && tooltip, stock_id && stock_id, Int32.new(value))
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
      __return_value = LibGtk.radio_action_set_current_value((to_unsafe as LibGtk::RadioAction*), Int32.new(current_value))
      __return_value
    end

    def group=(group)
      __return_value = LibGtk.radio_action_set_group((to_unsafe as LibGtk::RadioAction*), group && group)
      __return_value
    end

    alias ChangedSignal = RadioAction, Gtk::RadioAction -> 
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::RadioAction*, _arg1 : LibGtk::LibGtk::RadioAction*) {
       __return_value = __block.call(RadioAction.new(_arg0), Gtk::RadioAction.new(_arg1))
       __return_value
      }
      connect("changed", __callback)
    end

  end
end

