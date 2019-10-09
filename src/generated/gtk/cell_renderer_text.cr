require "./cell_renderer"

module Gtk
  class CellRendererText < CellRenderer
    @pointer : Void*
    def initialize(pointer : LibGtk::CellRendererText*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::CellRendererText*)
    end

    def align_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "align_set", gvalue)
      gvalue.boolean
    end

    def alignment
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "alignment", gvalue)
      gvalue.enum
    end

    def attributes
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "attributes", gvalue)
      Pango::AttrList.cast(gvalue.object)
    end


    def background_gdk
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "background_gdk", gvalue)
      Gdk::Color.cast(gvalue.object)
    end

    def background_rgba
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "background_rgba", gvalue)
      Gdk::RGBA.cast(gvalue.object)
    end

    def background_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "background_set", gvalue)
      gvalue.boolean
    end

    def editable
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "editable", gvalue)
      gvalue.boolean
    end

    def editable_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "editable_set", gvalue)
      gvalue.boolean
    end

    def ellipsize
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "ellipsize", gvalue)
      gvalue.enum
    end

    def ellipsize_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "ellipsize_set", gvalue)
      gvalue.boolean
    end

    def family
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "family", gvalue)
      gvalue.string
    end

    def family_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "family_set", gvalue)
      gvalue.boolean
    end

    def font
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "font", gvalue)
      gvalue.string
    end

    def font_desc
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "font_desc", gvalue)
      Pango::FontDescription.cast(gvalue.object)
    end


    def foreground_gdk
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "foreground_gdk", gvalue)
      Gdk::Color.cast(gvalue.object)
    end

    def foreground_rgba
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "foreground_rgba", gvalue)
      Gdk::RGBA.cast(gvalue.object)
    end

    def foreground_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "foreground_set", gvalue)
      gvalue.boolean
    end

    def language
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "language", gvalue)
      gvalue.string
    end

    def language_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "language_set", gvalue)
      gvalue.boolean
    end


    def max_width_chars
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "max_width_chars", gvalue)
      gvalue
    end

    def placeholder_text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "placeholder_text", gvalue)
      gvalue.string
    end

    def rise
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "rise", gvalue)
      gvalue
    end

    def rise_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "rise_set", gvalue)
      gvalue.boolean
    end

    def scale
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "scale", gvalue)
      gvalue
    end

    def scale_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "scale_set", gvalue)
      gvalue.boolean
    end

    def single_paragraph_mode
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "single_paragraph_mode", gvalue)
      gvalue.boolean
    end

    def size
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "size", gvalue)
      gvalue
    end

    def size_points
      gvalue = GObject::Value.new(GObject::Type::DOUBLE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "size_points", gvalue)
      gvalue
    end

    def size_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "size_set", gvalue)
      gvalue.boolean
    end

    def stretch
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "stretch", gvalue)
      gvalue.enum
    end

    def stretch_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "stretch_set", gvalue)
      gvalue.boolean
    end

    def strikethrough
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "strikethrough", gvalue)
      gvalue.boolean
    end

    def strikethrough_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "strikethrough_set", gvalue)
      gvalue.boolean
    end

    def style
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "style", gvalue)
      gvalue.enum
    end

    def style_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "style_set", gvalue)
      gvalue.boolean
    end

    def text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text", gvalue)
      gvalue.string
    end

    def underline
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "underline", gvalue)
      gvalue.enum
    end

    def underline_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "underline_set", gvalue)
      gvalue.boolean
    end

    def variant
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "variant", gvalue)
      gvalue.enum
    end

    def variant_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "variant_set", gvalue)
      gvalue.boolean
    end

    def weight
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "weight", gvalue)
      gvalue
    end

    def weight_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "weight_set", gvalue)
      gvalue.boolean
    end

    def width_chars
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "width_chars", gvalue)
      gvalue
    end

    def wrap_mode
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "wrap_mode", gvalue)
      gvalue.enum
    end

    def wrap_width
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "wrap_width", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.cell_renderer_text_new
      cast Gtk::CellRenderer.new(__return_value)
    end

    def fixed_height_from_font=(number_of_rows)
      LibGtk.cell_renderer_text_set_fixed_height_from_font(@pointer.as(LibGtk::CellRendererText*), Int32.new(number_of_rows))
      nil
    end

    alias EditedSignal = CellRendererText, String, String ->
    def on_edited(&__block : EditedSignal)
      __callback = ->(_arg0 : LibGtk::CellRendererText*, _arg1 : UInt8**, _arg2 : UInt8**) {
       __return_value = __block.call(CellRendererText.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), (raise "Expected string but got null" unless _arg2; ::String.new(_arg2)))
       __return_value
      }
      connect("edited", __callback)
    end

  end
end

