module Gtk
  class UIManager < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::UIManager*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::UIManager*)
    end

    # Implements Buildable
    def add_tearoffs
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "add_tearoffs", gvalue)
      gvalue.boolean
    end

    def ui
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "ui", gvalue)
      gvalue.string
    end

    def self.new : self
      __return_value = LibGtk.u_i_manager_new
      cast Gtk::UIManager.new(__return_value)
    end

    def add_ui(merge_id, path, name, action, type : Gtk::UIManagerItemType, top)
      LibGtk.u_i_manager_add_ui(@pointer.as(LibGtk::UIManager*), UInt32.new(merge_id), path.to_unsafe, name.to_unsafe, action ? action.to_unsafe : nil, type, top)
      nil
    end

    def add_ui_from_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.u_i_manager_add_ui_from_file(@pointer.as(LibGtk::UIManager*), filename.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_ui_from_resource(resource_path)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.u_i_manager_add_ui_from_resource(@pointer.as(LibGtk::UIManager*), resource_path.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_ui_from_string(buffer, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.u_i_manager_add_ui_from_string(@pointer.as(LibGtk::UIManager*), buffer.to_unsafe, Int64.new(length), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def ensure_update
      LibGtk.u_i_manager_ensure_update(@pointer.as(LibGtk::UIManager*))
      nil
    end

    def accel_group
      __return_value = LibGtk.u_i_manager_get_accel_group(@pointer.as(LibGtk::UIManager*))
      Gtk::AccelGroup.new(__return_value)
    end

    def action(path)
      __return_value = LibGtk.u_i_manager_get_action(@pointer.as(LibGtk::UIManager*), path.to_unsafe)
      Gtk::Action.new(__return_value)
    end

    def action_groups
      __return_value = LibGtk.u_i_manager_get_action_groups(@pointer.as(LibGtk::UIManager*))
      GLib::ListIterator(Gtk::ActionGroup, LibGtk::ActionGroup**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def add_tearoffs
      __return_value = LibGtk.u_i_manager_get_add_tearoffs(@pointer.as(LibGtk::UIManager*))
      __return_value
    end

    def toplevels(types : Gtk::UIManagerItemType)
      __return_value = LibGtk.u_i_manager_get_toplevels(@pointer.as(LibGtk::UIManager*), types)
      GLib::SListIterator(Gtk::Widget, LibGtk::Widget**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def ui
      __return_value = LibGtk.u_i_manager_get_ui(@pointer.as(LibGtk::UIManager*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def widget(path)
      __return_value = LibGtk.u_i_manager_get_widget(@pointer.as(LibGtk::UIManager*), path.to_unsafe)
      Gtk::Widget.new(__return_value)
    end

    def insert_action_group(action_group, pos)
      LibGtk.u_i_manager_insert_action_group(@pointer.as(LibGtk::UIManager*), action_group.to_unsafe.as(LibGtk::ActionGroup*), Int32.new(pos))
      nil
    end

    def new_merge_id
      __return_value = LibGtk.u_i_manager_new_merge_id(@pointer.as(LibGtk::UIManager*))
      __return_value
    end

    def remove_action_group(action_group)
      LibGtk.u_i_manager_remove_action_group(@pointer.as(LibGtk::UIManager*), action_group.to_unsafe.as(LibGtk::ActionGroup*))
      nil
    end

    def remove_ui(merge_id)
      LibGtk.u_i_manager_remove_ui(@pointer.as(LibGtk::UIManager*), UInt32.new(merge_id))
      nil
    end

    def add_tearoffs=(add_tearoffs)
      LibGtk.u_i_manager_set_add_tearoffs(@pointer.as(LibGtk::UIManager*), add_tearoffs)
      nil
    end

    alias ActionsChangedSignal = UIManager ->
    def on_actions_changed(&__block : ActionsChangedSignal)
      __callback = ->(_arg0 : LibGtk::UIManager*) {
       __return_value = __block.call(UIManager.new(_arg0))
       __return_value
      }
      connect("actions-changed", __callback)
    end

    alias AddWidgetSignal = UIManager, Gtk::Widget ->
    def on_add_widget(&__block : AddWidgetSignal)
      __callback = ->(_arg0 : LibGtk::UIManager*, _arg1 : LibGtk::Widget**) {
       __return_value = __block.call(UIManager.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("add-widget", __callback)
    end

    alias ConnectProxySignal = UIManager, Gtk::Action, Gtk::Widget ->
    def on_connect_proxy(&__block : ConnectProxySignal)
      __callback = ->(_arg0 : LibGtk::UIManager*, _arg1 : LibGtk::Action**, _arg2 : LibGtk::Widget**) {
       __return_value = __block.call(UIManager.new(_arg0), Gtk::Action.new(_arg1), Gtk::Widget.new(_arg2))
       __return_value
      }
      connect("connect-proxy", __callback)
    end

    alias DisconnectProxySignal = UIManager, Gtk::Action, Gtk::Widget ->
    def on_disconnect_proxy(&__block : DisconnectProxySignal)
      __callback = ->(_arg0 : LibGtk::UIManager*, _arg1 : LibGtk::Action**, _arg2 : LibGtk::Widget**) {
       __return_value = __block.call(UIManager.new(_arg0), Gtk::Action.new(_arg1), Gtk::Widget.new(_arg2))
       __return_value
      }
      connect("disconnect-proxy", __callback)
    end

    alias PostActivateSignal = UIManager, Gtk::Action ->
    def on_post_activate(&__block : PostActivateSignal)
      __callback = ->(_arg0 : LibGtk::UIManager*, _arg1 : LibGtk::Action**) {
       __return_value = __block.call(UIManager.new(_arg0), Gtk::Action.new(_arg1))
       __return_value
      }
      connect("post-activate", __callback)
    end

    alias PreActivateSignal = UIManager, Gtk::Action ->
    def on_pre_activate(&__block : PreActivateSignal)
      __callback = ->(_arg0 : LibGtk::UIManager*, _arg1 : LibGtk::Action**) {
       __return_value = __block.call(UIManager.new(_arg0), Gtk::Action.new(_arg1))
       __return_value
      }
      connect("pre-activate", __callback)
    end

  end
end

