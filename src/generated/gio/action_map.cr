module Gio
  module ActionMap
    def add_action(action)
      LibGio.action_map_add_action(@pointer.as(LibGio::ActionMap*), action.to_unsafe.as(LibGio::Action*))
      nil
    end

    def add_action_entries(entries, n_entries, user_data)
      LibGio.action_map_add_action_entries(@pointer.as(LibGio::ActionMap*), entries, Int32.new(n_entries), user_data ? user_data : nil)
      nil
    end

    def lookup_action(action_name)
      __return_value = LibGio.action_map_lookup_action(@pointer.as(LibGio::ActionMap*), action_name.to_unsafe)
      __return_value
    end

    def remove_action(action_name)
      LibGio.action_map_remove_action(@pointer.as(LibGio::ActionMap*), action_name.to_unsafe)
      nil
    end

  end
end

