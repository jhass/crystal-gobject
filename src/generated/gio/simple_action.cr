module Gio
  class SimpleAction < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::SimpleAction*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SimpleAction*)
    end

    # Implements Action
    def enabled
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "enabled", gvalue)
      gvalue.boolean
    end

    def name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "name", gvalue)
      gvalue.string
    end

    def parameter_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "parameter_type", gvalue)
      GLib::VariantType.cast(gvalue.object)
    end

    def state
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "state", gvalue)
      GLib::Variant.cast(gvalue.object)
    end

    def state_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "state_type", gvalue)
      GLib::VariantType.cast(gvalue.object)
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
      LibGio.simple_action_set_enabled(@pointer.as(LibGio::SimpleAction*), enabled)
      nil
    end

    def state=(value)
      LibGio.simple_action_set_state(@pointer.as(LibGio::SimpleAction*), value.to_unsafe.as(LibGLib::Variant*))
      nil
    end

    def state_hint=(state_hint)
      LibGio.simple_action_set_state_hint(@pointer.as(LibGio::SimpleAction*), state_hint ? state_hint.to_unsafe.as(LibGLib::Variant*) : nil)
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

