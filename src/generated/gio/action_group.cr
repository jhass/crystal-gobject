module Gio
  module ActionGroup
    def action_added(action_name)
      __return_value = LibGio.action_group_action_added((to_unsafe as LibGio::ActionGroup*), action_name)
      __return_value
    end

    def action_enabled_changed(action_name, enabled)
      __return_value = LibGio.action_group_action_enabled_changed((to_unsafe as LibGio::ActionGroup*), action_name, Bool.cast(enabled))
      __return_value
    end

    def action_removed(action_name)
      __return_value = LibGio.action_group_action_removed((to_unsafe as LibGio::ActionGroup*), action_name)
      __return_value
    end

    def action_state_changed(action_name, state)
      __return_value = LibGio.action_group_action_state_changed((to_unsafe as LibGio::ActionGroup*), action_name, (state.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def activate_action(action_name, parameter)
      __return_value = LibGio.action_group_activate_action((to_unsafe as LibGio::ActionGroup*), action_name, (parameter.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def change_action_state(action_name, value)
      __return_value = LibGio.action_group_change_action_state((to_unsafe as LibGio::ActionGroup*), action_name, (value.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def action_enabled(action_name)
      __return_value = LibGio.action_group_get_action_enabled((to_unsafe as LibGio::ActionGroup*), action_name)
      __return_value
    end

    def action_parameter_type(action_name)
      __return_value = LibGio.action_group_get_action_parameter_type((to_unsafe as LibGio::ActionGroup*), action_name)
      GLib::VariantType.new(__return_value) if __return_value
    end

    def action_state(action_name)
      __return_value = LibGio.action_group_get_action_state((to_unsafe as LibGio::ActionGroup*), action_name)
      GLib::Variant.new(__return_value) if __return_value
    end

    def action_state_hint(action_name)
      __return_value = LibGio.action_group_get_action_state_hint((to_unsafe as LibGio::ActionGroup*), action_name)
      GLib::Variant.new(__return_value) if __return_value
    end

    def action_state_type(action_name)
      __return_value = LibGio.action_group_get_action_state_type((to_unsafe as LibGio::ActionGroup*), action_name)
      GLib::VariantType.new(__return_value) if __return_value
    end

    def has_action(action_name)
      __return_value = LibGio.action_group_has_action((to_unsafe as LibGio::ActionGroup*), action_name)
      __return_value
    end

    def list_actions
      __return_value = LibGio.action_group_list_actions((to_unsafe as LibGio::ActionGroup*))
      PointerIterator.new(__return_value) {|__item_97| raise "Expected string but got null" unless __item_97; String.new(__item_97) }
    end

    def query_action(action_name, enabled, parameter_type, state_type, state_hint, state)
      __return_value = LibGio.action_group_query_action((to_unsafe as LibGio::ActionGroup*), action_name, Bool.cast(enabled), (parameter_type.to_unsafe as LibGLib::VariantType*), (state_type.to_unsafe as LibGLib::VariantType*), (state_hint.to_unsafe as LibGLib::Variant*), (state.to_unsafe as LibGLib::Variant*))
      __return_value
    end

  end
end

