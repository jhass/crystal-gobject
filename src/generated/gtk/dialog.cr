require "./window"

module Gtk
  class Dialog < Window
    @pointer : Void*
    def initialize(pointer : LibGtk::Dialog*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Dialog*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def use_header_bar
      __return_value = LibGtk.dialog_get_use_header_bar(to_unsafe.as(LibGtk::Dialog*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.dialog_new
      cast Gtk::Widget.new(__return_value)
    end

    def add_action_widget(child, response_id)
      LibGtk.dialog_add_action_widget(@pointer.as(LibGtk::Dialog*), child.to_unsafe.as(LibGtk::Widget*), Int32.new(response_id))
      nil
    end

    def add_button(button_text, response_id)
      __return_value = LibGtk.dialog_add_button(@pointer.as(LibGtk::Dialog*), button_text.to_unsafe, Int32.new(response_id))
      Gtk::Widget.new(__return_value)
    end

    def action_area
      __return_value = LibGtk.dialog_get_action_area(@pointer.as(LibGtk::Dialog*))
      Gtk::Widget.new(__return_value)
    end

    def content_area
      __return_value = LibGtk.dialog_get_content_area(@pointer.as(LibGtk::Dialog*))
      Gtk::Box.new(__return_value)
    end

    def header_bar
      __return_value = LibGtk.dialog_get_header_bar(@pointer.as(LibGtk::Dialog*))
      Gtk::Widget.new(__return_value)
    end

    def response_for_widget(widget)
      __return_value = LibGtk.dialog_get_response_for_widget(@pointer.as(LibGtk::Dialog*), widget.to_unsafe.as(LibGtk::Widget*))
      __return_value
    end

    def widget_for_response(response_id)
      __return_value = LibGtk.dialog_get_widget_for_response(@pointer.as(LibGtk::Dialog*), Int32.new(response_id))
      Gtk::Widget.new(__return_value) if __return_value
    end

    def response(response_id)
      LibGtk.dialog_response(@pointer.as(LibGtk::Dialog*), Int32.new(response_id))
      nil
    end

    def run
      __return_value = LibGtk.dialog_run(@pointer.as(LibGtk::Dialog*))
      __return_value
    end

    def set_alternative_button_order_from_array(n_params, new_order)
      LibGtk.dialog_set_alternative_button_order_from_array(@pointer.as(LibGtk::Dialog*), Int32.new(n_params), new_order)
      nil
    end

    def default_response=(response_id)
      LibGtk.dialog_set_default_response(@pointer.as(LibGtk::Dialog*), Int32.new(response_id))
      nil
    end

    def set_response_sensitive(response_id, setting)
      LibGtk.dialog_set_response_sensitive(@pointer.as(LibGtk::Dialog*), Int32.new(response_id), setting)
      nil
    end

    alias CloseSignal = Dialog ->
    def on_close(&__block : CloseSignal)
      __callback = ->(_arg0 : LibGtk::Dialog*) {
       __return_value = __block.call(Dialog.new(_arg0))
       __return_value
      }
      connect("close", __callback)
    end

    alias ResponseSignal = Dialog, Int32 ->
    def on_response(&__block : ResponseSignal)
      __callback = ->(_arg0 : LibGtk::Dialog*, _arg1 : LibGtk::Int32*) {
       __return_value = __block.call(Dialog.new(_arg0), _arg1)
       __return_value
      }
      connect("response", __callback)
    end

  end
end

