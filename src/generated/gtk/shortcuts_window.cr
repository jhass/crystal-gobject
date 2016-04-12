require "./window"

module Gtk
  class ShortcutsWindow < Window
    def initialize(@gtk_shortcuts_window)
    end

    def to_unsafe
      @gtk_shortcuts_window.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable


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

