require "./cell_renderer"

module Gtk
  class CellRendererProgress < CellRenderer
    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererProgress*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererProgress*)
    end

    # Implements Orientable
    def inverted
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "inverted", gvalue)
      gvalue.boolean
    end

    def pulse
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pulse", gvalue)
      gvalue
    end

    def text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text", gvalue)
      gvalue.string
    end

    def text_xalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text_xalign", gvalue)
      gvalue
    end

    def text_yalign
      gvalue = GObject::Value.new(GObject::Type::FLOAT)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text_yalign", gvalue)
      gvalue
    end

    def value
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "value", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_progress_new
      cast Gtk::CellRenderer.new(__return_value)
    end

  end
end

