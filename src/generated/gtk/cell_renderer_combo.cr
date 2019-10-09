require "./cell_renderer_text"

module Gtk
  class CellRendererCombo < CellRendererText
    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererCombo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererCombo*)
    end

    def has_entry
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "has_entry", gvalue)
      gvalue.boolean
    end

    def model
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "model", gvalue)
      gvalue
    end

    def text_column
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text_column", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_combo_new
      cast Gtk::CellRenderer.new(__return_value)
    end

    alias ChangedSignal = CellRendererCombo, String, Gtk::TreeIter ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::CellRendererCombo*, _arg1 : UInt8**, _arg2 : LibGtk::TreeIter*) {
       __return_value = __block.call(CellRendererCombo.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), Gtk::TreeIter.new(_arg2))
       __return_value
      }
      connect("changed", __callback)
    end

  end
end

