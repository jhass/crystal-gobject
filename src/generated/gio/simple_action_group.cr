module Gio
  class SimpleActionGroup < GObject::Object
    def initialize(@gio_simple_action_group)
    end

    def to_unsafe
      @gio_simple_action_group.not_nil!
    end

    # Implements ActionGroup
    # Implements ActionMap
    def self.new_internal
      __return_value = LibGio.simple_action_group_new
      Gio::SimpleActionGroup.new(__return_value)
    end

    def add_entries(entries, n_entries, user_data)
      __return_value = LibGio.simple_action_group_add_entries((to_unsafe as LibGio::SimpleActionGroup*), entries, Int32.new(n_entries), user_data)
      __return_value
    end

    def insert(action)
      __return_value = LibGio.simple_action_group_insert((to_unsafe as LibGio::SimpleActionGroup*), (action.to_unsafe as LibGio::Action*))
      __return_value
    end

    def lookup(action_name)
      __return_value = LibGio.simple_action_group_lookup((to_unsafe as LibGio::SimpleActionGroup*), action_name)
      __return_value
    end

    def remove(action_name)
      __return_value = LibGio.simple_action_group_remove((to_unsafe as LibGio::SimpleActionGroup*), action_name)
      __return_value
    end

  end
end

