module Gio
  module ActionMap
    def add_action(action)
      __return_value = LibGio.action_map_add_action((to_unsafe as LibGio::ActionMap*), (action.to_unsafe as LibGio::Action*))
      __return_value
    end

    def add_action_entries(entries, n_entries, user_data)
      __return_value = LibGio.action_map_add_action_entries((to_unsafe as LibGio::ActionMap*), entries, Int32.new(n_entries), user_data)
      __return_value
    end

    def lookup_action(action_name)
      __return_value = LibGio.action_map_lookup_action((to_unsafe as LibGio::ActionMap*), action_name)
      __return_value
    end

    def remove_action(action_name)
      __return_value = LibGio.action_map_remove_action((to_unsafe as LibGio::ActionMap*), action_name)
      __return_value
    end

  end
end

