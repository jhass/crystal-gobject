module Gtk
  class TextTag < GObject::Object
    @gtk_text_tag : LibGtk::TextTag*?
    def initialize(@gtk_text_tag : LibGtk::TextTag*)
    end

    def to_unsafe
      @gtk_text_tag.not_nil!
    end

    def accumulative_margin
      __return_value = LibGtk.text_tag_get_accumulative_margin(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end


    def background_full_height
      __return_value = LibGtk.text_tag_get_background_full_height(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def background_full_height_set
      __return_value = LibGtk.text_tag_get_background_full_height_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def background_gdk
      __return_value = LibGtk.text_tag_get_background_gdk(to_unsafe.as(LibGtk::TextTag*))
      Gdk::Color.new(__return_value)
    end

    def background_rgba
      __return_value = LibGtk.text_tag_get_background_rgba(to_unsafe.as(LibGtk::TextTag*))
      Gdk::RGBA.new(__return_value)
    end

    def background_set
      __return_value = LibGtk.text_tag_get_background_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def direction
      __return_value = LibGtk.text_tag_get_direction(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def editable
      __return_value = LibGtk.text_tag_get_editable(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def editable_set
      __return_value = LibGtk.text_tag_get_editable_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def fallback
      __return_value = LibGtk.text_tag_get_fallback(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def fallback_set
      __return_value = LibGtk.text_tag_get_fallback_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def family
      __return_value = LibGtk.text_tag_get_family(to_unsafe.as(LibGtk::TextTag*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def family_set
      __return_value = LibGtk.text_tag_get_family_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def font
      __return_value = LibGtk.text_tag_get_font(to_unsafe.as(LibGtk::TextTag*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def font_desc
      __return_value = LibGtk.text_tag_get_font_desc(to_unsafe.as(LibGtk::TextTag*))
      Pango::FontDescription.new(__return_value)
    end

    def font_features
      __return_value = LibGtk.text_tag_get_font_features(to_unsafe.as(LibGtk::TextTag*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def font_features_set
      __return_value = LibGtk.text_tag_get_font_features_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end


    def foreground_gdk
      __return_value = LibGtk.text_tag_get_foreground_gdk(to_unsafe.as(LibGtk::TextTag*))
      Gdk::Color.new(__return_value)
    end

    def foreground_rgba
      __return_value = LibGtk.text_tag_get_foreground_rgba(to_unsafe.as(LibGtk::TextTag*))
      Gdk::RGBA.new(__return_value)
    end

    def foreground_set
      __return_value = LibGtk.text_tag_get_foreground_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def indent
      __return_value = LibGtk.text_tag_get_indent(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def indent_set
      __return_value = LibGtk.text_tag_get_indent_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def invisible
      __return_value = LibGtk.text_tag_get_invisible(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def invisible_set
      __return_value = LibGtk.text_tag_get_invisible_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def justification
      __return_value = LibGtk.text_tag_get_justification(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def justification_set
      __return_value = LibGtk.text_tag_get_justification_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def language
      __return_value = LibGtk.text_tag_get_language(to_unsafe.as(LibGtk::TextTag*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def language_set
      __return_value = LibGtk.text_tag_get_language_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def left_margin
      __return_value = LibGtk.text_tag_get_left_margin(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def left_margin_set
      __return_value = LibGtk.text_tag_get_left_margin_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def letter_spacing
      __return_value = LibGtk.text_tag_get_letter_spacing(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def letter_spacing_set
      __return_value = LibGtk.text_tag_get_letter_spacing_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def name
      __return_value = LibGtk.text_tag_get_name(to_unsafe.as(LibGtk::TextTag*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end


    def paragraph_background_gdk
      __return_value = LibGtk.text_tag_get_paragraph_background_gdk(to_unsafe.as(LibGtk::TextTag*))
      Gdk::Color.new(__return_value)
    end

    def paragraph_background_rgba
      __return_value = LibGtk.text_tag_get_paragraph_background_rgba(to_unsafe.as(LibGtk::TextTag*))
      Gdk::RGBA.new(__return_value)
    end

    def paragraph_background_set
      __return_value = LibGtk.text_tag_get_paragraph_background_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def pixels_above_lines
      __return_value = LibGtk.text_tag_get_pixels_above_lines(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def pixels_above_lines_set
      __return_value = LibGtk.text_tag_get_pixels_above_lines_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def pixels_below_lines
      __return_value = LibGtk.text_tag_get_pixels_below_lines(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def pixels_below_lines_set
      __return_value = LibGtk.text_tag_get_pixels_below_lines_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def pixels_inside_wrap
      __return_value = LibGtk.text_tag_get_pixels_inside_wrap(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def pixels_inside_wrap_set
      __return_value = LibGtk.text_tag_get_pixels_inside_wrap_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def right_margin
      __return_value = LibGtk.text_tag_get_right_margin(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def right_margin_set
      __return_value = LibGtk.text_tag_get_right_margin_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def rise
      __return_value = LibGtk.text_tag_get_rise(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def rise_set
      __return_value = LibGtk.text_tag_get_rise_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def scale
      __return_value = LibGtk.text_tag_get_scale(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def scale_set
      __return_value = LibGtk.text_tag_get_scale_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def size
      __return_value = LibGtk.text_tag_get_size(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def size_points
      __return_value = LibGtk.text_tag_get_size_points(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def size_set
      __return_value = LibGtk.text_tag_get_size_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def stretch
      __return_value = LibGtk.text_tag_get_stretch(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def stretch_set
      __return_value = LibGtk.text_tag_get_stretch_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def strikethrough
      __return_value = LibGtk.text_tag_get_strikethrough(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def strikethrough_rgba
      __return_value = LibGtk.text_tag_get_strikethrough_rgba(to_unsafe.as(LibGtk::TextTag*))
      Gdk::RGBA.new(__return_value)
    end

    def strikethrough_rgba_set
      __return_value = LibGtk.text_tag_get_strikethrough_rgba_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def strikethrough_set
      __return_value = LibGtk.text_tag_get_strikethrough_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def style
      __return_value = LibGtk.text_tag_get_style(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def style_set
      __return_value = LibGtk.text_tag_get_style_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def tabs
      __return_value = LibGtk.text_tag_get_tabs(to_unsafe.as(LibGtk::TextTag*))
      Pango::TabArray.new(__return_value)
    end

    def tabs_set
      __return_value = LibGtk.text_tag_get_tabs_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def underline
      __return_value = LibGtk.text_tag_get_underline(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def underline_rgba
      __return_value = LibGtk.text_tag_get_underline_rgba(to_unsafe.as(LibGtk::TextTag*))
      Gdk::RGBA.new(__return_value)
    end

    def underline_rgba_set
      __return_value = LibGtk.text_tag_get_underline_rgba_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def underline_set
      __return_value = LibGtk.text_tag_get_underline_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def variant
      __return_value = LibGtk.text_tag_get_variant(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def variant_set
      __return_value = LibGtk.text_tag_get_variant_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def weight
      __return_value = LibGtk.text_tag_get_weight(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def weight_set
      __return_value = LibGtk.text_tag_get_weight_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def wrap_mode
      __return_value = LibGtk.text_tag_get_wrap_mode(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def wrap_mode_set
      __return_value = LibGtk.text_tag_get_wrap_mode_set(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def self.new(name) : self
      __return_value = LibGtk.text_tag_new(name ? name.to_unsafe : nil)
      cast Gtk::TextTag.new(__return_value)
    end

    def changed(size_changed)
      LibGtk.text_tag_changed(to_unsafe.as(LibGtk::TextTag*), size_changed)
      nil
    end

    def event(event_object, event, iter)
      __return_value = LibGtk.text_tag_event(to_unsafe.as(LibGtk::TextTag*), event_object.to_unsafe.as(LibGObject::Object*), event.to_unsafe.as(LibGdk::Event*), iter.to_unsafe.as(LibGtk::TextIter*))
      __return_value
    end

    def priority
      __return_value = LibGtk.text_tag_get_priority(to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def priority=(priority)
      LibGtk.text_tag_set_priority(to_unsafe.as(LibGtk::TextTag*), Int32.new(priority))
      nil
    end

    alias EventSignal = TextTag, GObject::Object, Gdk::Event, Gtk::TextIter -> Bool
    def on_event(&__block : EventSignal)
      __callback = ->(_arg0 : LibGtk::TextTag*, _arg1 : LibGtk::LibGObject::Object*, _arg2 : LibGtk::LibGdk::Event*, _arg3 : LibGtk::LibGtk::TextIter*) {
       __return_value = __block.call(TextTag.new(_arg0), GObject::Object.new(_arg1), Gdk::Event.new(_arg2), Gtk::TextIter.new(_arg3))
       __return_value
      }
      connect("event", __callback)
    end

  end
end

