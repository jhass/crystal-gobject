module Gtk
  class TextTag < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::TextTag*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextTag*)
    end

    def accumulative_margin
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accumulative_margin", gvalue)
      gvalue.boolean
    end


    def background_full_height
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "background_full_height", gvalue)
      gvalue.boolean
    end

    def background_full_height_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "background_full_height_set", gvalue)
      gvalue.boolean
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

    def direction
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "direction", gvalue)
      gvalue.enum
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

    def fallback
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "fallback", gvalue)
      gvalue.boolean
    end

    def fallback_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "fallback_set", gvalue)
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

    def font_features
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "font_features", gvalue)
      gvalue.string
    end

    def font_features_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "font_features_set", gvalue)
      gvalue.boolean
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

    def indent
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "indent", gvalue)
      gvalue
    end

    def indent_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "indent_set", gvalue)
      gvalue.boolean
    end

    def invisible
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "invisible", gvalue)
      gvalue.boolean
    end

    def invisible_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "invisible_set", gvalue)
      gvalue.boolean
    end

    def justification
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "justification", gvalue)
      gvalue.enum
    end

    def justification_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "justification_set", gvalue)
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

    def left_margin
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "left_margin", gvalue)
      gvalue
    end

    def left_margin_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "left_margin_set", gvalue)
      gvalue.boolean
    end

    def letter_spacing
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "letter_spacing", gvalue)
      gvalue
    end

    def letter_spacing_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "letter_spacing_set", gvalue)
      gvalue.boolean
    end

    def name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "name", gvalue)
      gvalue.string
    end


    def paragraph_background_gdk
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "paragraph_background_gdk", gvalue)
      Gdk::Color.cast(gvalue.object)
    end

    def paragraph_background_rgba
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "paragraph_background_rgba", gvalue)
      Gdk::RGBA.cast(gvalue.object)
    end

    def paragraph_background_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "paragraph_background_set", gvalue)
      gvalue.boolean
    end

    def pixels_above_lines
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixels_above_lines", gvalue)
      gvalue
    end

    def pixels_above_lines_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixels_above_lines_set", gvalue)
      gvalue.boolean
    end

    def pixels_below_lines
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixels_below_lines", gvalue)
      gvalue
    end

    def pixels_below_lines_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixels_below_lines_set", gvalue)
      gvalue.boolean
    end

    def pixels_inside_wrap
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixels_inside_wrap", gvalue)
      gvalue
    end

    def pixels_inside_wrap_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixels_inside_wrap_set", gvalue)
      gvalue.boolean
    end

    def right_margin
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "right_margin", gvalue)
      gvalue
    end

    def right_margin_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "right_margin_set", gvalue)
      gvalue.boolean
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

    def strikethrough_rgba
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "strikethrough_rgba", gvalue)
      Gdk::RGBA.cast(gvalue.object)
    end

    def strikethrough_rgba_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "strikethrough_rgba_set", gvalue)
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

    def tabs
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tabs", gvalue)
      Pango::TabArray.cast(gvalue.object)
    end

    def tabs_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tabs_set", gvalue)
      gvalue.boolean
    end

    def underline
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "underline", gvalue)
      gvalue.enum
    end

    def underline_rgba
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "underline_rgba", gvalue)
      Gdk::RGBA.cast(gvalue.object)
    end

    def underline_rgba_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "underline_rgba_set", gvalue)
      gvalue.boolean
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

    def wrap_mode
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "wrap_mode", gvalue)
      gvalue.enum
    end

    def wrap_mode_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "wrap_mode_set", gvalue)
      gvalue.boolean
    end

    def self.new(name) : self
      __return_value = LibGtk.text_tag_new(name ? name.to_unsafe : nil)
      cast Gtk::TextTag.new(__return_value)
    end

    def changed(size_changed)
      LibGtk.text_tag_changed(@pointer.as(LibGtk::TextTag*), size_changed)
      nil
    end

    def event(event_object, event, iter)
      __return_value = LibGtk.text_tag_event(@pointer.as(LibGtk::TextTag*), event_object.to_unsafe.as(LibGObject::Object*), event.to_unsafe.as(LibGdk::Event*), iter.to_unsafe.as(LibGtk::TextIter*))
      __return_value
    end

    def priority
      __return_value = LibGtk.text_tag_get_priority(@pointer.as(LibGtk::TextTag*))
      __return_value
    end

    def priority=(priority)
      LibGtk.text_tag_set_priority(@pointer.as(LibGtk::TextTag*), Int32.new(priority))
      nil
    end

    alias EventSignal = TextTag, GObject::Object, Gdk::Event, Gtk::TextIter -> Bool
    def on_event(&__block : EventSignal)
      __callback = ->(_arg0 : LibGtk::TextTag*, _arg1 : LibGObject::Object**, _arg2 : LibGdk::Event*, _arg3 : LibGtk::TextIter*) {
       __return_value = __block.call(TextTag.new(_arg0), GObject::Object.new(_arg1), Gdk::Event.new(_arg2), Gtk::TextIter.new(_arg3))
       __return_value
      }
      connect("event", __callback)
    end

  end
end

