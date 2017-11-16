module Gio
  module ActionGroup
    def action_added(action_name)
      LibGio.action_group_action_added(@pointer.as(LibGio::ActionGroup*), action_name.to_unsafe)
      nil
    end

    def action_enabled_changed(action_name, enabled)
      LibGio.action_group_action_enabled_changed(@pointer.as(LibGio::ActionGroup*), action_name.to_unsafe, enabled)
      nil
    end

    def action_removed(action_name)
      LibGio.action_group_action_removed(@pointer.as(LibGio::ActionGroup*), action_name.to_unsafe)
      nil
    end

    def action_state_changed(action_name, state)
      LibGio.action_group_action_state_changed(@pointer.as(LibGio::ActionGroup*), action_name.to_unsafe, state.to_unsafe.as(LibGLib::Variant*))
      nil
    end

    def activate_action(action_name, parameter)
      LibGio.action_group_activate_action(@pointer.as(LibGio::ActionGroup*), action_name.to_unsafe, parameter ? parameter.to_unsafe.as(LibGLib::Variant*) : nil)
      nil
    end

    def change_action_state(action_name, value)
      LibGio.action_group_change_action_state(@pointer.as(LibGio::ActionGroup*), action_name.to_unsafe, value.to_unsafe.as(LibGLib::Variant*))
      nil
    end

    def action_enabled(action_name)
      __return_value = LibGio.action_group_get_action_enabled(@pointer.as(LibGio::ActionGroup*), action_name.to_unsafe)
      __return_value
    end

    def action_parameter_type(action_name)
      __return_value = LibGio.action_group_get_action_parameter_type(@pointer.as(LibGio::ActionGroup*), action_name.to_unsafe)
      GLib::VariantType.new(__return_value) if __return_value
    end

    def action_state(action_name)
      __return_value = LibGio.action_group_get_action_state(@pointer.as(LibGio::ActionGroup*), action_name.to_unsafe)
      GLib::Variant.new(__return_value) if __return_value
    end

    def action_state_hint(action_name)
      __return_value = LibGio.action_group_get_action_state_hint(@pointer.as(LibGio::ActionGroup*), action_name.to_unsafe)
      GLib::Variant.new(__return_value) if __return_value
    end

    def action_state_type(action_name)
      __return_value = LibGio.action_group_get_action_state_type(@pointer.as(LibGio::ActionGroup*), action_name.to_unsafe)
      GLib::VariantType.new(__return_value) if __return_value
    end

    def has_action(action_name)
      __return_value = LibGio.action_group_has_action(@pointer.as(LibGio::ActionGroup*), action_name.to_unsafe)
      __return_value
    end

    def list_actions
      __return_value = LibGio.action_group_list_actions(@pointer.as(LibGio::ActionGroup*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def query_action(action_name, enabled, parameter_type, state_type, state_hint, state)
      __return_value = LibGio.action_group_query_action(@pointer.as(LibGio::ActionGroup*), action_name.to_unsafe, enabled, parameter_type, state_type, state_hint, state)
      __return_value
    end

    alias ActionAddedSignal = ActionGroup, String ->
    def on_action_added(&__block : ActionAddedSignal)
      __callback = ->(_arg0 : LibGio::ActionGroup*, _arg1 : LibGio::UInt8**) {
       __return_value = __block.call(ActionGroup.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("action-added", __callback)
    end

    alias ActionEnabledChangedSignal = ActionGroup, String, Bool ->
    def on_action_enabled_changed(&__block : ActionEnabledChangedSignal)
      __callback = ->(_arg0 : LibGio::ActionGroup*, _arg1 : LibGio::UInt8**, _arg2 : LibGio::Bool*) {
       __return_value = __block.call(ActionGroup.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), _arg2)
       __return_value
      }
      connect("action-enabled-changed", __callback)
    end

    alias ActionRemovedSignal = ActionGroup, String ->
    def on_action_removed(&__block : ActionRemovedSignal)
      __callback = ->(_arg0 : LibGio::ActionGroup*, _arg1 : LibGio::UInt8**) {
       __return_value = __block.call(ActionGroup.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("action-removed", __callback)
    end

    alias ActionStateChangedSignal = ActionGroup, String, GLib::Variant ->
    def on_action_state_changed(&__block : ActionStateChangedSignal)
      __callback = ->(_arg0 : LibGio::ActionGroup*, _arg1 : LibGio::UInt8**, _arg2 : LibGio::LibGLib::Variant*) {
       __return_value = __block.call(ActionGroup.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), GLib::Variant.new(_arg2))
       __return_value
      }
      connect("action-state-changed", __callback)
    end

  end
end

