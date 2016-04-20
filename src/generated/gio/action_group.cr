module Gio
  module ActionGroup
    def action_added(action_name)
      __return_value = LibGio.action_group_action_added((to_unsafe as LibGio::ActionGroup*), action_name)
      __return_value
    end

    def action_enabled_changed(action_name, enabled)
      __return_value = LibGio.action_group_action_enabled_changed((to_unsafe as LibGio::ActionGroup*), action_name, enabled)
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
      __return_value = LibGio.action_group_activate_action((to_unsafe as LibGio::ActionGroup*), action_name, parameter && (parameter.to_unsafe as LibGLib::Variant*))
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
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def query_action(action_name, enabled, parameter_type, state_type, state_hint, state)
      __return_value = LibGio.action_group_query_action((to_unsafe as LibGio::ActionGroup*), action_name, enabled, (parameter_type.to_unsafe as LibGLib::VariantType*), (state_type.to_unsafe as LibGLib::VariantType*), (state_hint.to_unsafe as LibGLib::Variant*), (state.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    alias ActionAddedSignal = ActionGroup, UInt8 -> 
    def on_action_added(&__block : ActionAddedSignal)
      __callback = ->(_arg0 : LibGio::ActionGroup*, _arg1 : LibGio::UInt8**) {
       __return_value = __block.call(ActionGroup.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("action-added", __callback)
    end

    alias ActionEnabledChangedSignal = ActionGroup, UInt8, Bool -> 
    def on_action_enabled_changed(&__block : ActionEnabledChangedSignal)
      __callback = ->(_arg0 : LibGio::ActionGroup*, _arg1 : LibGio::UInt8**, _arg2 : LibGio::Bool*) {
       __return_value = __block.call(ActionGroup.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), _arg2)
       __return_value
      }
      connect("action-enabled-changed", __callback)
    end

    alias ActionRemovedSignal = ActionGroup, UInt8 -> 
    def on_action_removed(&__block : ActionRemovedSignal)
      __callback = ->(_arg0 : LibGio::ActionGroup*, _arg1 : LibGio::UInt8**) {
       __return_value = __block.call(ActionGroup.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("action-removed", __callback)
    end

    alias ActionStateChangedSignal = ActionGroup, UInt8, GLib::Variant -> 
    def on_action_state_changed(&__block : ActionStateChangedSignal)
      __callback = ->(_arg0 : LibGio::ActionGroup*, _arg1 : LibGio::UInt8**, _arg2 : LibGio::LibGLib::Variant*) {
       __return_value = __block.call(ActionGroup.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), GLib::Variant.new(_arg2))
       __return_value
      }
      connect("action-state-changed", __callback)
    end

  end
end

