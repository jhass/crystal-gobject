module Gtk
  class TextTag < GObject::Object
    def initialize @gtk_text_tag
    end

    def to_unsafe
      @gtk_text_tag.not_nil!
    end

    def accumulative_margin=(__value)
      LibGtk.text_tag_set_accumulative_margin((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def background=(__value)
      LibGtk.text_tag_set_background((to_unsafe as LibGtk::TextTag*), __value)
    end

    def background_full_height=(__value)
      LibGtk.text_tag_set_background_full_height((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def background_full_height_set=(__value)
      LibGtk.text_tag_set_background_full_height_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def background_gdk=(__value)
      LibGtk.text_tag_set_background_gdk((to_unsafe as LibGtk::TextTag*), __value)
    end

    def background_rgba=(__value)
      LibGtk.text_tag_set_background_rgba((to_unsafe as LibGtk::TextTag*), __value)
    end

    def background_set=(__value)
      LibGtk.text_tag_set_background_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def direction=(__value)
      LibGtk.text_tag_set_direction((to_unsafe as LibGtk::TextTag*), __value)
    end

    def editable=(__value)
      LibGtk.text_tag_set_editable((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def editable_set=(__value)
      LibGtk.text_tag_set_editable_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def family=(__value)
      LibGtk.text_tag_set_family((to_unsafe as LibGtk::TextTag*), __value)
    end

    def family_set=(__value)
      LibGtk.text_tag_set_family_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def font=(__value)
      LibGtk.text_tag_set_font((to_unsafe as LibGtk::TextTag*), __value)
    end

    def font_desc=(__value)
      LibGtk.text_tag_set_font_desc((to_unsafe as LibGtk::TextTag*), __value)
    end

    def foreground=(__value)
      LibGtk.text_tag_set_foreground((to_unsafe as LibGtk::TextTag*), __value)
    end

    def foreground_gdk=(__value)
      LibGtk.text_tag_set_foreground_gdk((to_unsafe as LibGtk::TextTag*), __value)
    end

    def foreground_rgba=(__value)
      LibGtk.text_tag_set_foreground_rgba((to_unsafe as LibGtk::TextTag*), __value)
    end

    def foreground_set=(__value)
      LibGtk.text_tag_set_foreground_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def indent=(__value)
      LibGtk.text_tag_set_indent((to_unsafe as LibGtk::TextTag*), Int32.cast(__value))
    end

    def indent_set=(__value)
      LibGtk.text_tag_set_indent_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def invisible=(__value)
      LibGtk.text_tag_set_invisible((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def invisible_set=(__value)
      LibGtk.text_tag_set_invisible_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def justification=(__value)
      LibGtk.text_tag_set_justification((to_unsafe as LibGtk::TextTag*), __value)
    end

    def justification_set=(__value)
      LibGtk.text_tag_set_justification_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def language=(__value)
      LibGtk.text_tag_set_language((to_unsafe as LibGtk::TextTag*), __value)
    end

    def language_set=(__value)
      LibGtk.text_tag_set_language_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def left_margin=(__value)
      LibGtk.text_tag_set_left_margin((to_unsafe as LibGtk::TextTag*), Int32.cast(__value))
    end

    def left_margin_set=(__value)
      LibGtk.text_tag_set_left_margin_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end


    def paragraph_background=(__value)
      LibGtk.text_tag_set_paragraph_background((to_unsafe as LibGtk::TextTag*), __value)
    end

    def paragraph_background_gdk=(__value)
      LibGtk.text_tag_set_paragraph_background_gdk((to_unsafe as LibGtk::TextTag*), __value)
    end

    def paragraph_background_rgba=(__value)
      LibGtk.text_tag_set_paragraph_background_rgba((to_unsafe as LibGtk::TextTag*), __value)
    end

    def paragraph_background_set=(__value)
      LibGtk.text_tag_set_paragraph_background_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def pixels_above_lines=(__value)
      LibGtk.text_tag_set_pixels_above_lines((to_unsafe as LibGtk::TextTag*), Int32.cast(__value))
    end

    def pixels_above_lines_set=(__value)
      LibGtk.text_tag_set_pixels_above_lines_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def pixels_below_lines=(__value)
      LibGtk.text_tag_set_pixels_below_lines((to_unsafe as LibGtk::TextTag*), Int32.cast(__value))
    end

    def pixels_below_lines_set=(__value)
      LibGtk.text_tag_set_pixels_below_lines_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def pixels_inside_wrap=(__value)
      LibGtk.text_tag_set_pixels_inside_wrap((to_unsafe as LibGtk::TextTag*), Int32.cast(__value))
    end

    def pixels_inside_wrap_set=(__value)
      LibGtk.text_tag_set_pixels_inside_wrap_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def right_margin=(__value)
      LibGtk.text_tag_set_right_margin((to_unsafe as LibGtk::TextTag*), Int32.cast(__value))
    end

    def right_margin_set=(__value)
      LibGtk.text_tag_set_right_margin_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def rise=(__value)
      LibGtk.text_tag_set_rise((to_unsafe as LibGtk::TextTag*), Int32.cast(__value))
    end

    def rise_set=(__value)
      LibGtk.text_tag_set_rise_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def scale=(__value)
      LibGtk.text_tag_set_scale((to_unsafe as LibGtk::TextTag*), Float64.cast(__value))
    end

    def scale_set=(__value)
      LibGtk.text_tag_set_scale_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def size=(__value)
      LibGtk.text_tag_set_size((to_unsafe as LibGtk::TextTag*), Int32.cast(__value))
    end

    def size_points=(__value)
      LibGtk.text_tag_set_size_points((to_unsafe as LibGtk::TextTag*), Float64.cast(__value))
    end

    def size_set=(__value)
      LibGtk.text_tag_set_size_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def stretch=(__value)
      LibGtk.text_tag_set_stretch((to_unsafe as LibGtk::TextTag*), __value)
    end

    def stretch_set=(__value)
      LibGtk.text_tag_set_stretch_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def strikethrough=(__value)
      LibGtk.text_tag_set_strikethrough((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def strikethrough_set=(__value)
      LibGtk.text_tag_set_strikethrough_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def style=(__value)
      LibGtk.text_tag_set_style((to_unsafe as LibGtk::TextTag*), __value)
    end

    def style_set=(__value)
      LibGtk.text_tag_set_style_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def tabs=(__value)
      LibGtk.text_tag_set_tabs((to_unsafe as LibGtk::TextTag*), __value)
    end

    def tabs_set=(__value)
      LibGtk.text_tag_set_tabs_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def underline=(__value)
      LibGtk.text_tag_set_underline((to_unsafe as LibGtk::TextTag*), __value)
    end

    def underline_set=(__value)
      LibGtk.text_tag_set_underline_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def variant=(__value)
      LibGtk.text_tag_set_variant((to_unsafe as LibGtk::TextTag*), __value)
    end

    def variant_set=(__value)
      LibGtk.text_tag_set_variant_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def weight=(__value)
      LibGtk.text_tag_set_weight((to_unsafe as LibGtk::TextTag*), Int32.cast(__value))
    end

    def weight_set=(__value)
      LibGtk.text_tag_set_weight_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def wrap_mode=(__value)
      LibGtk.text_tag_set_wrap_mode((to_unsafe as LibGtk::TextTag*), __value)
    end

    def wrap_mode_set=(__value)
      LibGtk.text_tag_set_wrap_mode_set((to_unsafe as LibGtk::TextTag*), Bool.cast(__value))
    end

    def self.new_internal(name)
      __return_value = LibGtk.text_tag_new(name)
      Gtk::TextTag.new(__return_value)
    end

    def event(event_object, event, iter)
      __return_value = LibGtk.text_tag_event((to_unsafe as LibGtk::TextTag*), (event_object.to_unsafe as LibGObject::Object*), (event.to_unsafe as LibGdk::Event*), (iter.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def priority
      __return_value = LibGtk.text_tag_get_priority((to_unsafe as LibGtk::TextTag*))
      __return_value
    end

    def priority=(priority)
      __return_value = LibGtk.text_tag_set_priority((to_unsafe as LibGtk::TextTag*), Int32.cast(priority))
      __return_value
    end

  end
end

