module Gtk
  class ActionGroup < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::ActionGroup*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ActionGroup*)
    end

    # Implements Buildable
    def accel_group
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accel_group", gvalue)
      Gtk::AccelGroup.cast(gvalue.object)
    end

    def name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "name", gvalue)
      gvalue.string
    end

    def sensitive
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "sensitive", gvalue)
      gvalue.boolean
    end

    def visible
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "visible", gvalue)
      gvalue.boolean
    end

    def self.new(name) : self
      __return_value = LibGtk.action_group_new(name.to_unsafe)
      cast Gtk::ActionGroup.new(__return_value)
    end

    def add_action(action)
      LibGtk.action_group_add_action(@pointer.as(LibGtk::ActionGroup*), action.to_unsafe.as(LibGtk::Action*))
      nil
    end

    def add_action_with_accel(action, accelerator)
      LibGtk.action_group_add_action_with_accel(@pointer.as(LibGtk::ActionGroup*), action.to_unsafe.as(LibGtk::Action*), accelerator ? accelerator.to_unsafe : nil)
      nil
    end

    def accel_group
      __return_value = LibGtk.action_group_get_accel_group(@pointer.as(LibGtk::ActionGroup*))
      Gtk::AccelGroup.new(__return_value)
    end

    def action(action_name)
      __return_value = LibGtk.action_group_get_action(@pointer.as(LibGtk::ActionGroup*), action_name.to_unsafe)
      Gtk::Action.new(__return_value)
    end

    def name
      __return_value = LibGtk.action_group_get_name(@pointer.as(LibGtk::ActionGroup*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def sensitive
      __return_value = LibGtk.action_group_get_sensitive(@pointer.as(LibGtk::ActionGroup*))
      __return_value
    end

    def visible
      __return_value = LibGtk.action_group_get_visible(@pointer.as(LibGtk::ActionGroup*))
      __return_value
    end

    def list_actions
      __return_value = LibGtk.action_group_list_actions(@pointer.as(LibGtk::ActionGroup*))
      GLib::ListIterator(Gtk::Action, LibGtk::Action**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def remove_action(action)
      LibGtk.action_group_remove_action(@pointer.as(LibGtk::ActionGroup*), action.to_unsafe.as(LibGtk::Action*))
      nil
    end

    def accel_group=(accel_group)
      LibGtk.action_group_set_accel_group(@pointer.as(LibGtk::ActionGroup*), accel_group ? accel_group.to_unsafe.as(LibGtk::AccelGroup*) : nil)
      nil
    end

    def sensitive=(sensitive)
      LibGtk.action_group_set_sensitive(@pointer.as(LibGtk::ActionGroup*), sensitive)
      nil
    end

    def set_translate_func(func, data, notify)
      LibGtk.action_group_set_translate_func(@pointer.as(LibGtk::ActionGroup*), func, data ? data : nil, notify)
      nil
    end

    def translation_domain=(domain)
      LibGtk.action_group_set_translation_domain(@pointer.as(LibGtk::ActionGroup*), domain ? domain.to_unsafe : nil)
      nil
    end

    def visible=(visible)
      LibGtk.action_group_set_visible(@pointer.as(LibGtk::ActionGroup*), visible)
      nil
    end

    def translate_string(string)
      __return_value = LibGtk.action_group_translate_string(@pointer.as(LibGtk::ActionGroup*), string.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    alias ConnectProxySignal = ActionGroup, Gtk::Action, Gtk::Widget ->
    def on_connect_proxy(&__block : ConnectProxySignal)
      __callback = ->(_arg0 : LibGtk::ActionGroup*, _arg1 : LibGtk::LibGtk::Action**, _arg2 : LibGtk::LibGtk::Widget**) {
       __return_value = __block.call(ActionGroup.new(_arg0), Gtk::Action.new(_arg1), Gtk::Widget.new(_arg2))
       __return_value
      }
      connect("connect-proxy", __callback)
    end

    alias DisconnectProxySignal = ActionGroup, Gtk::Action, Gtk::Widget ->
    def on_disconnect_proxy(&__block : DisconnectProxySignal)
      __callback = ->(_arg0 : LibGtk::ActionGroup*, _arg1 : LibGtk::LibGtk::Action**, _arg2 : LibGtk::LibGtk::Widget**) {
       __return_value = __block.call(ActionGroup.new(_arg0), Gtk::Action.new(_arg1), Gtk::Widget.new(_arg2))
       __return_value
      }
      connect("disconnect-proxy", __callback)
    end

    alias PostActivateSignal = ActionGroup, Gtk::Action ->
    def on_post_activate(&__block : PostActivateSignal)
      __callback = ->(_arg0 : LibGtk::ActionGroup*, _arg1 : LibGtk::LibGtk::Action**) {
       __return_value = __block.call(ActionGroup.new(_arg0), Gtk::Action.new(_arg1))
       __return_value
      }
      connect("post-activate", __callback)
    end

    alias PreActivateSignal = ActionGroup, Gtk::Action ->
    def on_pre_activate(&__block : PreActivateSignal)
      __callback = ->(_arg0 : LibGtk::ActionGroup*, _arg1 : LibGtk::LibGtk::Action**) {
       __return_value = __block.call(ActionGroup.new(_arg0), Gtk::Action.new(_arg1))
       __return_value
      }
      connect("pre-activate", __callback)
    end

  end
end

