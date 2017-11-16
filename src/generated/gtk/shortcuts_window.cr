require "./window"

module Gtk
  class ShortcutsWindow < Window
    @pointer : Void*
    def initialize(pointer : LibGtk::ShortcutsWindow*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ShortcutsWindow*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def section_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "section_name", gvalue)
      gvalue.string
    end

    def view_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "view_name", gvalue)
      gvalue.string
    end

    alias CloseSignal = ShortcutsWindow ->
    def on_close(&__block : CloseSignal)
      __callback = ->(_arg0 : LibGtk::ShortcutsWindow*) {
       __return_value = __block.call(ShortcutsWindow.new(_arg0))
       __return_value
      }
      connect("close", __callback)
    end

    alias SearchSignal = ShortcutsWindow ->
    def on_search(&__block : SearchSignal)
      __callback = ->(_arg0 : LibGtk::ShortcutsWindow*) {
       __return_value = __block.call(ShortcutsWindow.new(_arg0))
       __return_value
      }
      connect("search", __callback)
    end

  end
end

