require "./action"

module Gtk
  class RecentAction < Action
    def initialize(@gtk_recent_action)
    end

    def to_unsafe
      @gtk_recent_action.not_nil!
    end

    # Implements Buildable
    # Implements RecentChooser

    def self.new_internal(name, label, tooltip, stock_id)
      __return_value = LibGtk.recent_action_new(name, label && label, tooltip && tooltip, stock_id && stock_id)
      Gtk::Action.new(__return_value)
    end

    def self.new_for_manager(name, label, tooltip, stock_id, manager)
      __return_value = LibGtk.recent_action_new_for_manager(name, label && label, tooltip && tooltip, stock_id && stock_id, manager && (manager.to_unsafe as LibGtk::RecentManager*))
      Gtk::Action.new(__return_value)
    end

    def show_numbers
      __return_value = LibGtk.recent_action_get_show_numbers((to_unsafe as LibGtk::RecentAction*))
      __return_value
    end

    def show_numbers=(show_numbers)
      __return_value = LibGtk.recent_action_set_show_numbers((to_unsafe as LibGtk::RecentAction*), show_numbers)
      __return_value
    end

  end
end

