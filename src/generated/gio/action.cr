module Gio
  module Action
    def self.name_is_valid(action_name)
      __return_value = LibGio.action_name_is_valid(action_name)
      __return_value
    end

    def self.parse_detailed_name(detailed_name, action_name, target_value)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.action_parse_detailed_name(detailed_name, action_name, (target_value.to_unsafe as LibGLib::Variant*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.print_detailed_name(action_name, target_value)
      __return_value = LibGio.action_print_detailed_name(action_name, target_value && (target_value.to_unsafe as LibGLib::Variant*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def activate(parameter)
      __return_value = LibGio.action_activate((to_unsafe as LibGio::Action*), parameter && (parameter.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def change_state(value)
      __return_value = LibGio.action_change_state((to_unsafe as LibGio::Action*), (value.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def enabled
      __return_value = LibGio.action_get_enabled((to_unsafe as LibGio::Action*))
      __return_value
    end

    def name
      __return_value = LibGio.action_get_name((to_unsafe as LibGio::Action*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def parameter_type
      __return_value = LibGio.action_get_parameter_type((to_unsafe as LibGio::Action*))
      GLib::VariantType.new(__return_value)
    end

    def state
      __return_value = LibGio.action_get_state((to_unsafe as LibGio::Action*))
      GLib::Variant.new(__return_value)
    end

    def state_hint
      __return_value = LibGio.action_get_state_hint((to_unsafe as LibGio::Action*))
      GLib::Variant.new(__return_value) if __return_value
    end

    def state_type
      __return_value = LibGio.action_get_state_type((to_unsafe as LibGio::Action*))
      GLib::VariantType.new(__return_value)
    end

  end
end

