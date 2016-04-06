require "./box"

module Gtk
  class Statusbar < Box
    def initialize(@gtk_statusbar)
    end

    def to_unsafe
      @gtk_statusbar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    def self.new_internal
      __return_value = LibGtk.statusbar_new
      Gtk::Widget.new(__return_value)
    end

    def context_id(context_description)
      __return_value = LibGtk.statusbar_get_context_id((to_unsafe as LibGtk::Statusbar*), context_description)
      __return_value
    end

    def message_area
      __return_value = LibGtk.statusbar_get_message_area((to_unsafe as LibGtk::Statusbar*))
      Gtk::Box.new(__return_value)
    end

    def pop(context_id)
      __return_value = LibGtk.statusbar_pop((to_unsafe as LibGtk::Statusbar*), UInt32.new(context_id))
      __return_value
    end

    def push(context_id, text)
      __return_value = LibGtk.statusbar_push((to_unsafe as LibGtk::Statusbar*), UInt32.new(context_id), text)
      __return_value
    end

    def remove(context_id, message_id)
      __return_value = LibGtk.statusbar_remove((to_unsafe as LibGtk::Statusbar*), UInt32.new(context_id), UInt32.new(message_id))
      __return_value
    end

    def remove_all(context_id)
      __return_value = LibGtk.statusbar_remove_all((to_unsafe as LibGtk::Statusbar*), UInt32.new(context_id))
      __return_value
    end

    alias TextPoppedSignal = Statusbar, UInt32, UInt8 -> 
    def on_text_popped(&__block : TextPoppedSignal)
      __callback = ->(_arg0 : LibGtk::Statusbar*, _arg1 : LibGtk::UInt32*, _arg2 : LibGtk::UInt8**) {
       __return_value = __block.call(Statusbar.new(_arg0), _arg1, (raise "Expected string but got null" unless _arg2; String.new(_arg2)))
       __return_value
      }
      connect("text-popped", __callback)
    end

    alias TextPushedSignal = Statusbar, UInt32, UInt8 -> 
    def on_text_pushed(&__block : TextPushedSignal)
      __callback = ->(_arg0 : LibGtk::Statusbar*, _arg1 : LibGtk::UInt32*, _arg2 : LibGtk::UInt8**) {
       __return_value = __block.call(Statusbar.new(_arg0), _arg1, (raise "Expected string but got null" unless _arg2; String.new(_arg2)))
       __return_value
      }
      connect("text-pushed", __callback)
    end

  end
end

