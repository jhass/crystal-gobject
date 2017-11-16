require "./cell_renderer"

module Gtk
  class CellRendererToggle < CellRenderer
    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererToggle*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererToggle*)
    end

    def activatable
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "activatable", gvalue)
      gvalue.boolean
    end

    def active
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "active", gvalue)
      gvalue.boolean
    end

    def inconsistent
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "inconsistent", gvalue)
      gvalue.boolean
    end

    def indicator_size
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "indicator_size", gvalue)
      gvalue
    end

    def radio
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "radio", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_toggle_new
      cast Gtk::CellRenderer.new(__return_value)
    end

    def activatable
      __return_value = LibGtk.cell_renderer_toggle_get_activatable(@pointer.as(LibGtk::CellRendererToggle*))
      __return_value
    end

    def active
      __return_value = LibGtk.cell_renderer_toggle_get_active(@pointer.as(LibGtk::CellRendererToggle*))
      __return_value
    end

    def radio
      __return_value = LibGtk.cell_renderer_toggle_get_radio(@pointer.as(LibGtk::CellRendererToggle*))
      __return_value
    end

    def activatable=(setting)
      LibGtk.cell_renderer_toggle_set_activatable(@pointer.as(LibGtk::CellRendererToggle*), setting)
      nil
    end

    def active=(setting)
      LibGtk.cell_renderer_toggle_set_active(@pointer.as(LibGtk::CellRendererToggle*), setting)
      nil
    end

    def radio=(radio)
      LibGtk.cell_renderer_toggle_set_radio(@pointer.as(LibGtk::CellRendererToggle*), radio)
      nil
    end

    alias ToggledSignal = CellRendererToggle, String ->
    def on_toggled(&__block : ToggledSignal)
      __callback = ->(_arg0 : LibGtk::CellRendererToggle*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(CellRendererToggle.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("toggled", __callback)
    end

  end
end

