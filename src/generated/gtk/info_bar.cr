require "./box"

module Gtk
  class InfoBar < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::InfoBar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::InfoBar*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def message_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "message_type", gvalue)
      gvalue.enum
    end

    def revealed
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "revealed", gvalue)
      gvalue.boolean
    end

    def show_close_button
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "show_close_button", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.info_bar_new
      cast Gtk::Widget.new(__return_value)
    end

    def add_action_widget(child, response_id)
      LibGtk.info_bar_add_action_widget(@pointer.as(LibGtk::InfoBar*), child.to_unsafe.as(LibGtk::Widget*), Int32.new(response_id))
      nil
    end

    def add_button(button_text, response_id)
      __return_value = LibGtk.info_bar_add_button(@pointer.as(LibGtk::InfoBar*), button_text.to_unsafe, Int32.new(response_id))
      Gtk::Button.new(__return_value)
    end

    def action_area
      __return_value = LibGtk.info_bar_get_action_area(@pointer.as(LibGtk::InfoBar*))
      Gtk::Widget.new(__return_value)
    end

    def content_area
      __return_value = LibGtk.info_bar_get_content_area(@pointer.as(LibGtk::InfoBar*))
      Gtk::Widget.new(__return_value)
    end

    def message_type
      __return_value = LibGtk.info_bar_get_message_type(@pointer.as(LibGtk::InfoBar*))
      __return_value
    end

    def revealed
      __return_value = LibGtk.info_bar_get_revealed(@pointer.as(LibGtk::InfoBar*))
      __return_value
    end

    def show_close_button
      __return_value = LibGtk.info_bar_get_show_close_button(@pointer.as(LibGtk::InfoBar*))
      __return_value
    end

    def response(response_id)
      LibGtk.info_bar_response(@pointer.as(LibGtk::InfoBar*), Int32.new(response_id))
      nil
    end

    def default_response=(response_id)
      LibGtk.info_bar_set_default_response(@pointer.as(LibGtk::InfoBar*), Int32.new(response_id))
      nil
    end

    def message_type=(message_type : Gtk::MessageType)
      LibGtk.info_bar_set_message_type(@pointer.as(LibGtk::InfoBar*), message_type)
      nil
    end

    def set_response_sensitive(response_id, setting)
      LibGtk.info_bar_set_response_sensitive(@pointer.as(LibGtk::InfoBar*), Int32.new(response_id), setting)
      nil
    end

    def revealed=(revealed)
      LibGtk.info_bar_set_revealed(@pointer.as(LibGtk::InfoBar*), revealed)
      nil
    end

    def show_close_button=(setting)
      LibGtk.info_bar_set_show_close_button(@pointer.as(LibGtk::InfoBar*), setting)
      nil
    end

    alias CloseSignal = InfoBar ->
    def on_close(&__block : CloseSignal)
      __callback = ->(_arg0 : LibGtk::InfoBar*) {
       __return_value = __block.call(InfoBar.new(_arg0))
       __return_value
      }
      connect("close", __callback)
    end

    alias ResponseSignal = InfoBar, Int32 ->
    def on_response(&__block : ResponseSignal)
      __callback = ->(_arg0 : LibGtk::InfoBar*, _arg1 : Int32*) {
       __return_value = __block.call(InfoBar.new(_arg0), _arg1)
       __return_value
      }
      connect("response", __callback)
    end

  end
end

