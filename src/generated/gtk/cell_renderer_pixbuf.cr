require "./cell_renderer"

module Gtk
  class CellRendererPixbuf < CellRenderer
    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererPixbuf*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererPixbuf*)
    end

    def follow_state
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "follow_state", gvalue)
      gvalue.boolean
    end

    def gicon
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "gicon", gvalue)
      gvalue
    end

    def icon_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icon_name", gvalue)
      gvalue.string
    end

    def pixbuf
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixbuf", gvalue)
      GdkPixbuf::Pixbuf.cast(gvalue.object)
    end

    def pixbuf_expander_closed
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixbuf_expander_closed", gvalue)
      GdkPixbuf::Pixbuf.cast(gvalue.object)
    end

    def pixbuf_expander_open
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixbuf_expander_open", gvalue)
      GdkPixbuf::Pixbuf.cast(gvalue.object)
    end

    def stock_detail
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "stock_detail", gvalue)
      gvalue.string
    end

    def stock_id
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "stock_id", gvalue)
      gvalue.string
    end

    def stock_size
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "stock_size", gvalue)
      gvalue
    end

    def surface
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "surface", gvalue)
      Cairo::Surface.cast(gvalue.object)
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_pixbuf_new
      cast Gtk::CellRenderer.new(__return_value)
    end

  end
end

