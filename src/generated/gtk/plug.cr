require "./window"

module Gtk
  class Plug < Window
    @pointer : Void*
    def initialize(pointer : LibGtk::Plug*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Plug*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def embedded
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "embedded", gvalue)
      gvalue.boolean
    end

    def socket_window
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "socket_window", gvalue)
      Gdk::Window.cast(gvalue.object)
    end

    def self.new(socket_id) : self
      __return_value = LibGtk.plug_new(UInt64.new(socket_id))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_for_display(display, socket_id) : self
      __return_value = LibGtk.plug_new_for_display(display.to_unsafe.as(LibGdk::Display*), UInt64.new(socket_id))
      cast Gtk::Widget.new(__return_value)
    end

    def construct(socket_id)
      LibGtk.plug_construct(@pointer.as(LibGtk::Plug*), UInt64.new(socket_id))
      nil
    end

    def construct_for_display(display, socket_id)
      LibGtk.plug_construct_for_display(@pointer.as(LibGtk::Plug*), display.to_unsafe.as(LibGdk::Display*), UInt64.new(socket_id))
      nil
    end

    def embedded
      __return_value = LibGtk.plug_get_embedded(@pointer.as(LibGtk::Plug*))
      __return_value
    end

    def id
      __return_value = LibGtk.plug_get_id(@pointer.as(LibGtk::Plug*))
      __return_value
    end

    def socket_window
      __return_value = LibGtk.plug_get_socket_window(@pointer.as(LibGtk::Plug*))
      Gdk::Window.new(__return_value) if __return_value
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

