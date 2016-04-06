require "./box"

module Gtk
  class InfoBar < Box
    def initialize(@gtk_info_bar)
    end

    def to_unsafe
      @gtk_info_bar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable


    def self.new_internal
      __return_value = LibGtk.info_bar_new
      Gtk::Widget.new(__return_value)
    end

    def add_action_widget(child, response_id)
      __return_value = LibGtk.info_bar_add_action_widget((to_unsafe as LibGtk::InfoBar*), (child.to_unsafe as LibGtk::Widget*), Int32.new(response_id))
      __return_value
    end

    def add_button(button_text, response_id)
      __return_value = LibGtk.info_bar_add_button((to_unsafe as LibGtk::InfoBar*), button_text, Int32.new(response_id))
      Gtk::Button.new(__return_value)
    end

    def action_area
      __return_value = LibGtk.info_bar_get_action_area((to_unsafe as LibGtk::InfoBar*))
      Gtk::Widget.new(__return_value)
    end

    def content_area
      __return_value = LibGtk.info_bar_get_content_area((to_unsafe as LibGtk::InfoBar*))
      Gtk::Widget.new(__return_value)
    end

    def message_type
      __return_value = LibGtk.info_bar_get_message_type((to_unsafe as LibGtk::InfoBar*))
      __return_value
    end

    def show_close_button
      __return_value = LibGtk.info_bar_get_show_close_button((to_unsafe as LibGtk::InfoBar*))
      __return_value
    end

    def response(response_id)
      __return_value = LibGtk.info_bar_response((to_unsafe as LibGtk::InfoBar*), Int32.new(response_id))
      __return_value
    end

    def default_response=(response_id)
      __return_value = LibGtk.info_bar_set_default_response((to_unsafe as LibGtk::InfoBar*), Int32.new(response_id))
      __return_value
    end

    def message_type=(message_type)
      __return_value = LibGtk.info_bar_set_message_type((to_unsafe as LibGtk::InfoBar*), message_type)
      __return_value
    end

    def set_response_sensitive(response_id, setting)
      __return_value = LibGtk.info_bar_set_response_sensitive((to_unsafe as LibGtk::InfoBar*), Int32.new(response_id), setting)
      __return_value
    end

    def show_close_button=(setting)
      __return_value = LibGtk.info_bar_set_show_close_button((to_unsafe as LibGtk::InfoBar*), setting)
      __return_value
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
      __callback = ->(_arg0 : LibGtk::InfoBar*, _arg1 : LibGtk::Int32*) {
       __return_value = __block.call(InfoBar.new(_arg0), _arg1)
       __return_value
      }
      connect("response", __callback)
    end

  end
end

