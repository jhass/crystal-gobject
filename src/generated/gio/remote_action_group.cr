module Gio
  module RemoteActionGroup
    def activate_action_full(action_name, parameter, platform_data)
      __return_value = LibGio.remote_action_group_activate_action_full(to_unsafe.as(LibGio::RemoteActionGroup*), action_name.to_unsafe, parameter ? parameter.to_unsafe.as(LibGLib::Variant*) : nil, platform_data.to_unsafe.as(LibGLib::Variant*))
      __return_value
    end

    def change_action_state_full(action_name, value, platform_data)
      __return_value = LibGio.remote_action_group_change_action_state_full(to_unsafe.as(LibGio::RemoteActionGroup*), action_name.to_unsafe, value.to_unsafe.as(LibGLib::Variant*), platform_data.to_unsafe.as(LibGLib::Variant*))
      __return_value
    end

  end
end

