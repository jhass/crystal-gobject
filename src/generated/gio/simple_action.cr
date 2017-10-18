module Gio
  class SimpleAction < GObject::Object
    @gio_simple_action : LibGio::SimpleAction*?
    def initialize(@gio_simple_action : LibGio::SimpleAction*)
    end

    def to_unsafe
      @gio_simple_action.not_nil!
    end

    # Implements Action
    def enabled
      __return_value = LibGio.simple_action_get_enabled(to_unsafe.as(LibGio::SimpleAction*))
      __return_value
    end

    def name
      __return_value = LibGio.simple_action_get_name(to_unsafe.as(LibGio::SimpleAction*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def parameter_type
      __return_value = LibGio.simple_action_get_parameter_type(to_unsafe.as(LibGio::SimpleAction*))
      GLib::VariantType.new(__return_value)
    end

    def state
      __return_value = LibGio.simple_action_get_state(to_unsafe.as(LibGio::SimpleAction*))
      GLib::Variant.new(__return_value)
    end

    def state_type
      __return_value = LibGio.simple_action_get_state_type(to_unsafe.as(LibGio::SimpleAction*))
      GLib::VariantType.new(__return_value)
    end

    def self.new(name, parameter_type) : self
      __return_value = LibGio.simple_action_new(name.to_unsafe, parameter_type ? parameter_type.to_unsafe.as(LibGLib::VariantType*) : nil)
      cast Gio::SimpleAction.new(__return_value)
    end

    def self.new_stateful(name, parameter_type, state) : self
      __return_value = LibGio.simple_action_new_stateful(name.to_unsafe, parameter_type ? parameter_type.to_unsafe.as(LibGLib::VariantType*) : nil, state.to_unsafe.as(LibGLib::Variant*))
      cast Gio::SimpleAction.new(__return_value)
    end

    def enabled=(enabled)
      LibGio.simple_action_set_enabled(to_unsafe.as(LibGio::SimpleAction*), enabled)
      nil
    end

    def state=(value)
      LibGio.simple_action_set_state(to_unsafe.as(LibGio::SimpleAction*), value.to_unsafe.as(LibGLib::Variant*))
      nil
    end

    def state_hint=(state_hint)
      LibGio.simple_action_set_state_hint(to_unsafe.as(LibGio::SimpleAction*), state_hint ? state_hint.to_unsafe.as(LibGLib::Variant*) : nil)
      nil
    end

    alias ActivateSignal = SimpleAction, GLib::Variant ->
    def on_activate(&__block : ActivateSignal)
      __callback = ->(_arg0 : LibGio::SimpleAction*, _arg1 : LibGio::LibGLib::Variant*) {
       __return_value = __block.call(SimpleAction.new(_arg0), GLib::Variant.new(_arg1))
       __return_value
      }
      connect("activate", __callback)
    end

    alias ChangeStateSignal = SimpleAction, GLib::Variant ->
    def on_change_state(&__block : ChangeStateSignal)
      __callback = ->(_arg0 : LibGio::SimpleAction*, _arg1 : LibGio::LibGLib::Variant*) {
       __return_value = __block.call(SimpleAction.new(_arg0), GLib::Variant.new(_arg1))
       __return_value
      }
      connect("change-state", __callback)
    end

  end
end

