require "./cell_renderer_text"

module Gtk
  class CellRendererAccel < CellRendererText
    def initialize(@gtk_cell_renderer_accel)
    end

    def to_unsafe
      @gtk_cell_renderer_accel.not_nil!
    end





    def self.new_internal
      __return_value = LibGtk.cell_renderer_accel_new
      Gtk::CellRenderer.new(__return_value)
    end

    alias AccelClearedSignal = CellRendererAccel, UInt8 -> 
    def on_accel_cleared(&__block : AccelClearedSignal)
      __callback = ->(_arg0 : LibGtk::CellRendererAccel*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(CellRendererAccel.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)))
       __return_value
      }
      connect("accel-cleared", __callback)
    end

    alias AccelEditedSignal = CellRendererAccel, UInt8, UInt32, Gdk::ModifierType, UInt32 -> 
    def on_accel_edited(&__block : AccelEditedSignal)
      __callback = ->(_arg0 : LibGtk::CellRendererAccel*, _arg1 : LibGtk::UInt8**, _arg2 : LibGtk::UInt32*, _arg3 : LibGtk::LibGdk::ModifierType*, _arg4 : LibGtk::UInt32*) {
       __return_value = __block.call(CellRendererAccel.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)), _arg2, _arg3, _arg4)
       __return_value
      }
      connect("accel-edited", __callback)
    end

  end
end

