module Gtk
  class ThemingEngine < GObject::Object
    def initialize(@gtk_theming_engine)
    end

    def to_unsafe
      @gtk_theming_engine.not_nil!
    end


    def self.load(name)
      __return_value = LibGtk.theming_engine_load(name)
      Gtk::ThemingEngine.new(__return_value)
    end

    def background_color(state, color)
      __return_value = LibGtk.theming_engine_get_background_color((to_unsafe as LibGtk::ThemingEngine*), state, color)
      __return_value
    end

    def border(state, border)
      __return_value = LibGtk.theming_engine_get_border((to_unsafe as LibGtk::ThemingEngine*), state, border)
      __return_value
    end

    def border_color(state, color)
      __return_value = LibGtk.theming_engine_get_border_color((to_unsafe as LibGtk::ThemingEngine*), state, color)
      __return_value
    end

    def color(state, color)
      __return_value = LibGtk.theming_engine_get_color((to_unsafe as LibGtk::ThemingEngine*), state, color)
      __return_value
    end

    def direction
      __return_value = LibGtk.theming_engine_get_direction((to_unsafe as LibGtk::ThemingEngine*))
      __return_value
    end

    def font(state)
      __return_value = LibGtk.theming_engine_get_font((to_unsafe as LibGtk::ThemingEngine*), state)
      Pango::FontDescription.new(__return_value)
    end

    def junction_sides
      __return_value = LibGtk.theming_engine_get_junction_sides((to_unsafe as LibGtk::ThemingEngine*))
      __return_value
    end

    def margin(state, margin)
      __return_value = LibGtk.theming_engine_get_margin((to_unsafe as LibGtk::ThemingEngine*), state, margin)
      __return_value
    end

    def padding(state, padding)
      __return_value = LibGtk.theming_engine_get_padding((to_unsafe as LibGtk::ThemingEngine*), state, padding)
      __return_value
    end

    def path
      __return_value = LibGtk.theming_engine_get_path((to_unsafe as LibGtk::ThemingEngine*))
      Gtk::WidgetPath.new(__return_value)
    end

    def property(property, state, value)
      __return_value = LibGtk.theming_engine_get_property((to_unsafe as LibGtk::ThemingEngine*), property, state, value)
      __return_value
    end

    def screen
      __return_value = LibGtk.theming_engine_get_screen((to_unsafe as LibGtk::ThemingEngine*))
      Gdk::Screen.new(__return_value)
    end

    def state
      __return_value = LibGtk.theming_engine_get_state((to_unsafe as LibGtk::ThemingEngine*))
      __return_value
    end

    def style_property(property_name, value)
      __return_value = LibGtk.theming_engine_get_style_property((to_unsafe as LibGtk::ThemingEngine*), property_name, value)
      __return_value
    end

    def has_class(style_class)
      __return_value = LibGtk.theming_engine_has_class((to_unsafe as LibGtk::ThemingEngine*), style_class)
      __return_value
    end

    def has_region(style_region, flags)
      __return_value = LibGtk.theming_engine_has_region((to_unsafe as LibGtk::ThemingEngine*), style_region, flags)
      __return_value
    end

    def lookup_color(color_name, color)
      __return_value = LibGtk.theming_engine_lookup_color((to_unsafe as LibGtk::ThemingEngine*), color_name, color)
      __return_value
    end

    def state_is_running(state, progress)
      __return_value = LibGtk.theming_engine_state_is_running((to_unsafe as LibGtk::ThemingEngine*), state, Float64.new(progress))
      __return_value
    end

  end
end

