module Gtk
  class ThemingEngine < GObject::Object
    @gtk_theming_engine : LibGtk::ThemingEngine*?
    def initialize(@gtk_theming_engine : LibGtk::ThemingEngine*)
    end

    def to_unsafe
      @gtk_theming_engine.not_nil!.as(Void*)
    end


    def self.load(name)
      __return_value = LibGtk.theming_engine_load(name.to_unsafe)
      Gtk::ThemingEngine.new(__return_value)
    end

    def background_color(state : Gtk::StateFlags, color)
      __return_value = LibGtk.theming_engine_get_background_color(to_unsafe.as(LibGtk::ThemingEngine*), state, color)
      __return_value
    end

    def border(state : Gtk::StateFlags, border)
      __return_value = LibGtk.theming_engine_get_border(to_unsafe.as(LibGtk::ThemingEngine*), state, border)
      __return_value
    end

    def border_color(state : Gtk::StateFlags, color)
      __return_value = LibGtk.theming_engine_get_border_color(to_unsafe.as(LibGtk::ThemingEngine*), state, color)
      __return_value
    end

    def color(state : Gtk::StateFlags, color)
      __return_value = LibGtk.theming_engine_get_color(to_unsafe.as(LibGtk::ThemingEngine*), state, color)
      __return_value
    end

    def direction
      __return_value = LibGtk.theming_engine_get_direction(to_unsafe.as(LibGtk::ThemingEngine*))
      __return_value
    end

    def font(state : Gtk::StateFlags)
      __return_value = LibGtk.theming_engine_get_font(to_unsafe.as(LibGtk::ThemingEngine*), state)
      Pango::FontDescription.new(__return_value)
    end

    def junction_sides
      __return_value = LibGtk.theming_engine_get_junction_sides(to_unsafe.as(LibGtk::ThemingEngine*))
      __return_value
    end

    def margin(state : Gtk::StateFlags, margin)
      __return_value = LibGtk.theming_engine_get_margin(to_unsafe.as(LibGtk::ThemingEngine*), state, margin)
      __return_value
    end

    def padding(state : Gtk::StateFlags, padding)
      __return_value = LibGtk.theming_engine_get_padding(to_unsafe.as(LibGtk::ThemingEngine*), state, padding)
      __return_value
    end

    def path
      __return_value = LibGtk.theming_engine_get_path(to_unsafe.as(LibGtk::ThemingEngine*))
      Gtk::WidgetPath.new(__return_value)
    end

    def property(property, state : Gtk::StateFlags, value)
      __return_value = LibGtk.theming_engine_get_property(to_unsafe.as(LibGtk::ThemingEngine*), property.to_unsafe, state, value)
      __return_value
    end

    def screen
      __return_value = LibGtk.theming_engine_get_screen(to_unsafe.as(LibGtk::ThemingEngine*))
      Gdk::Screen.new(__return_value)
    end

    def state
      __return_value = LibGtk.theming_engine_get_state(to_unsafe.as(LibGtk::ThemingEngine*))
      __return_value
    end

    def style_property(property_name, value)
      __return_value = LibGtk.theming_engine_get_style_property(to_unsafe.as(LibGtk::ThemingEngine*), property_name.to_unsafe, value)
      __return_value
    end

    def has_class(style_class)
      __return_value = LibGtk.theming_engine_has_class(to_unsafe.as(LibGtk::ThemingEngine*), style_class.to_unsafe)
      __return_value
    end

    def has_region(style_region, flags : Gtk::RegionFlags?)
      __return_value = LibGtk.theming_engine_has_region(to_unsafe.as(LibGtk::ThemingEngine*), style_region.to_unsafe, flags)
      __return_value
    end

    def lookup_color(color_name, color)
      __return_value = LibGtk.theming_engine_lookup_color(to_unsafe.as(LibGtk::ThemingEngine*), color_name.to_unsafe, color)
      __return_value
    end

    def state_is_running(state : Gtk::StateType, progress)
      __return_value = LibGtk.theming_engine_state_is_running(to_unsafe.as(LibGtk::ThemingEngine*), state, progress)
      __return_value
    end

  end
end

