require "./toggle_action"

module Gtk
  class RadioAction < ToggleAction
    @pointer : Void*
    def initialize(pointer : LibGtk::RadioAction*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RadioAction*)
    end

    # Implements Buildable
    def current_value
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "current_value", gvalue)
      gvalue
    end


    def value
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "value", gvalue)
      gvalue
    end

    def self.new(name, label, tooltip, stock_id, value) : self
      __return_value = LibGtk.radio_action_new(name.to_unsafe, label ? label.to_unsafe : nil, tooltip ? tooltip.to_unsafe : nil, stock_id ? stock_id.to_unsafe : nil, Int32.new(value))
      cast Gtk::RadioAction.new(__return_value)
    end

    def current_value
      __return_value = LibGtk.radio_action_get_current_value(@pointer.as(LibGtk::RadioAction*))
      __return_value
    end

    def group
      __return_value = LibGtk.radio_action_get_group(@pointer.as(LibGtk::RadioAction*))
      GLib::SListIterator(Gtk::RadioAction, LibGtk::RadioAction**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def join_group(group_source)
      LibGtk.radio_action_join_group(@pointer.as(LibGtk::RadioAction*), group_source ? group_source.to_unsafe.as(LibGtk::RadioAction*) : nil)
      nil
    end

    def current_value=(current_value)
      LibGtk.radio_action_set_current_value(@pointer.as(LibGtk::RadioAction*), Int32.new(current_value))
      nil
    end

    def group=(group)
      LibGtk.radio_action_set_group(@pointer.as(LibGtk::RadioAction*), group ? group : nil)
      nil
    end

    alias ChangedSignal = RadioAction, Gtk::RadioAction ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::RadioAction*, _arg1 : LibGtk::RadioAction**) {
       __return_value = __block.call(RadioAction.new(_arg0), Gtk::RadioAction.new(_arg1))
       __return_value
      }
      connect("changed", __callback)
    end

  end
end

