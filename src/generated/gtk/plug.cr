require "./window"

module Gtk
  class Plug < Window
    def initialize(@gtk_plug)
    end

    def to_unsafe
      @gtk_plug.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable


    def self.new_internal(socket_id)
      __return_value = LibGtk.plug_new(UInt64.new(socket_id))
      Gtk::Widget.new(__return_value)
    end

    def self.new_for_display(display, socket_id)
      __return_value = LibGtk.plug_new_for_display((display.to_unsafe as LibGdk::Display*), UInt64.new(socket_id))
      Gtk::Widget.new(__return_value)
    end

    def construct(socket_id)
      __return_value = LibGtk.plug_construct((to_unsafe as LibGtk::Plug*), UInt64.new(socket_id))
      __return_value
    end

    def construct_for_display(display, socket_id)
      __return_value = LibGtk.plug_construct_for_display((to_unsafe as LibGtk::Plug*), (display.to_unsafe as LibGdk::Display*), UInt64.new(socket_id))
      __return_value
    end

    def embedded
      __return_value = LibGtk.plug_get_embedded((to_unsafe as LibGtk::Plug*))
      __return_value
    end

    def id
      __return_value = LibGtk.plug_get_id((to_unsafe as LibGtk::Plug*))
      __return_value
    end

    def socket_window
      __return_value = LibGtk.plug_get_socket_window((to_unsafe as LibGtk::Plug*))
      Gdk::Window.new(__return_value)
    end

    alias EmbeddedSignal = Plug -> 
    def on_embedded(&__block : EmbeddedSignal)
      __callback = ->(_arg0 : LibGtk::Plug*) {
       __return_value = __block.call(Plug.new(_arg0))
       __return_value
      }
      connect("embedded", __callback)
    end

  end
end

