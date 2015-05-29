module Gio
  class SimpleAction < GObject::Object
    def initialize @gio_simple_action
    end

    def to_unsafe
      @gio_simple_action.not_nil!
    end

    # Implements Action





    def self.new_internal(name, parameter_type)
      __return_value = LibGio.simple_action_new(name, parameter_type && (parameter_type.to_unsafe as LibGLib::VariantType*))
      Gio::SimpleAction.new(__return_value)
    end

    def self.new_stateful(name, parameter_type, state)
      __return_value = LibGio.simple_action_new_stateful(name, parameter_type && (parameter_type.to_unsafe as LibGLib::VariantType*), (state.to_unsafe as LibGLib::Variant*))
      Gio::SimpleAction.new(__return_value)
    end

    def enabled=(enabled)
      __return_value = LibGio.simple_action_set_enabled((to_unsafe as LibGio::SimpleAction*), Bool.cast(enabled))
      __return_value
    end

    def state=(value)
      __return_value = LibGio.simple_action_set_state((to_unsafe as LibGio::SimpleAction*), (value.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def state_hint=(state_hint)
      __return_value = LibGio.simple_action_set_state_hint((to_unsafe as LibGio::SimpleAction*), state_hint && (state_hint.to_unsafe as LibGLib::Variant*))
      __return_value
    end

  end
end

