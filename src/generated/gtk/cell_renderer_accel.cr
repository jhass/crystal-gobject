require "./cell_renderer_text"

module Gtk
  class CellRendererAccel < CellRendererText
    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererAccel*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererAccel*)
    end

    def accel_key
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accel_key", gvalue)
      gvalue
    end

    def accel_mode
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accel_mode", gvalue)
      gvalue.enum
    end

    def accel_mods
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accel_mods", gvalue)
      gvalue.enum
    end

    def keycode
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "keycode", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_accel_new
      cast Gtk::CellRenderer.new(__return_value)
    end

    alias AccelClearedSignal = CellRendererAccel, String ->
    def on_accel_cleared(&__block : AccelClearedSignal)
      __callback = ->(_arg0 : LibGtk::CellRendererAccel*, _arg1 : UInt8**) {
       __return_value = __block.call(CellRendererAccel.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("accel-cleared", __callback)
    end

    alias AccelEditedSignal = CellRendererAccel, String, UInt32, Gdk::ModifierType, UInt32 ->
    def on_accel_edited(&__block : AccelEditedSignal)
      __callback = ->(_arg0 : LibGtk::CellRendererAccel*, _arg1 : UInt8**, _arg2 : UInt32*, _arg3 : LibGdk::ModifierType*, _arg4 : UInt32*) {
       __return_value = __block.call(CellRendererAccel.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), _arg2, _arg3, _arg4)
       __return_value
      }
      connect("accel-edited", __callback)
    end

  end
end

