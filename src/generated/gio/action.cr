module Gio
  module Action
    def self.name_is_valid(action_name)
      __return_value = LibGio.action_name_is_valid(action_name.to_unsafe)
      __return_value
    end

    def self.parse_detailed_name(detailed_name, action_name, target_value) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.action_parse_detailed_name(detailed_name.to_unsafe, action_name, target_value, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.print_detailed_name(action_name, target_value)
      __return_value = LibGio.action_print_detailed_name(action_name.to_unsafe, target_value ? target_value.to_unsafe.as(LibGLib::Variant*) : nil)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def activate(parameter)
      LibGio.action_activate(@pointer.as(LibGio::Action*), parameter ? parameter.to_unsafe.as(LibGLib::Variant*) : nil)
      nil
    end

    def change_state(value)
      LibGio.action_change_state(@pointer.as(LibGio::Action*), value.to_unsafe.as(LibGLib::Variant*))
      nil
    end

    def enabled
      __return_value = LibGio.action_get_enabled(@pointer.as(LibGio::Action*))
      __return_value
    end

    def name
      __return_value = LibGio.action_get_name(@pointer.as(LibGio::Action*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def parameter_type
      __return_value = LibGio.action_get_parameter_type(@pointer.as(LibGio::Action*))
      GLib::VariantType.new(__return_value) if __return_value
    end

    def state
      __return_value = LibGio.action_get_state(@pointer.as(LibGio::Action*))
      GLib::Variant.new(__return_value)
    end

    def state_hint
      __return_value = LibGio.action_get_state_hint(@pointer.as(LibGio::Action*))
      GLib::Variant.new(__return_value) if __return_value
    end

    def state_type
      __return_value = LibGio.action_get_state_type(@pointer.as(LibGio::Action*))
      GLib::VariantType.new(__return_value) if __return_value
    end

  end
end

