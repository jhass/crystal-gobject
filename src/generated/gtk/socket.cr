require "./container"

module Gtk
  class Socket < Container
    def initialize(@gtk_socket)
    end

    def to_unsafe
      @gtk_socket.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.socket_new
      Gtk::Widget.new(__return_value)
    end

    def add_id(window)
      __return_value = LibGtk.socket_add_id((to_unsafe as LibGtk::Socket*), UInt64.new(window))
      __return_value
    end

    def id
      __return_value = LibGtk.socket_get_id((to_unsafe as LibGtk::Socket*))
      __return_value
    end

    def plug_window
      __return_value = LibGtk.socket_get_plug_window((to_unsafe as LibGtk::Socket*))
      Gdk::Window.new(__return_value)
    end

    alias PlugAddedSignal = Socket -> 
    def on_plug_added(&__block : PlugAddedSignal)
      __callback = ->(_arg0 : LibGtk::Socket*) {
       __return_value = __block.call(Socket.new(_arg0))
       __return_value
      }
      connect("plug-added", __callback)
    end

    alias PlugRemovedSignal = Socket -> Bool
    def on_plug_removed(&__block : PlugRemovedSignal)
      __callback = ->(_arg0 : LibGtk::Socket*) {
       __return_value = __block.call(Socket.new(_arg0))
       __return_value
      }
      connect("plug-removed", __callback)
    end

  end
end

