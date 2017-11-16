module Gtk
  class ThemingEngine < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::ThemingEngine*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ThemingEngine*)
    end

    def name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "name", gvalue)
      gvalue.string
    end

    def self.load(name)
      __return_value = LibGtk.theming_engine_load(name.to_unsafe)
      Gtk::ThemingEngine.new(__return_value) if __return_value
    end

    def background_color(state : Gtk::StateFlags, color)
      LibGtk.theming_engine_get_background_color(@pointer.as(LibGtk::ThemingEngine*), state, color)
      nil
    end

    def border(state : Gtk::StateFlags, border)
      LibGtk.theming_engine_get_border(@pointer.as(LibGtk::ThemingEngine*), state, border)
      nil
    end

    def border_color(state : Gtk::StateFlags, color)
      LibGtk.theming_engine_get_border_color(@pointer.as(LibGtk::ThemingEngine*), state, color)
      nil
    end

    def color(state : Gtk::StateFlags, color)
      LibGtk.theming_engine_get_color(@pointer.as(LibGtk::ThemingEngine*), state, color)
      nil
    end

    def direction
      __return_value = LibGtk.theming_engine_get_direction(@pointer.as(LibGtk::ThemingEngine*))
      __return_value
    end

    def font(state : Gtk::StateFlags)
      __return_value = LibGtk.theming_engine_get_font(@pointer.as(LibGtk::ThemingEngine*), state)
      Pango::FontDescription.new(__return_value)
    end

    def junction_sides
      __return_value = LibGtk.theming_engine_get_junction_sides(@pointer.as(LibGtk::ThemingEngine*))
      __return_value
    end

    def margin(state : Gtk::StateFlags, margin)
      LibGtk.theming_engine_get_margin(@pointer.as(LibGtk::ThemingEngine*), state, margin)
      nil
    end

    def padding(state : Gtk::StateFlags, padding)
      LibGtk.theming_engine_get_padding(@pointer.as(LibGtk::ThemingEngine*), state, padding)
      nil
    end

    def path
      __return_value = LibGtk.theming_engine_get_path(@pointer.as(LibGtk::ThemingEngine*))
      Gtk::WidgetPath.new(__return_value)
    end

    def property(property, state : Gtk::StateFlags, value)
      LibGtk.theming_engine_get_property(@pointer.as(LibGtk::ThemingEngine*), property.to_unsafe, state, value)
      nil
    end

    def screen
      __return_value = LibGtk.theming_engine_get_screen(@pointer.as(LibGtk::ThemingEngine*))
      Gdk::Screen.new(__return_value) if __return_value
    end

    def state
      __return_value = LibGtk.theming_engine_get_state(@pointer.as(LibGtk::ThemingEngine*))
      __return_value
    end

    def style_property(property_name, value)
      LibGtk.theming_engine_get_style_property(@pointer.as(LibGtk::ThemingEngine*), property_name.to_unsafe, value)
      nil
    end

    def has_class(style_class)
      __return_value = LibGtk.theming_engine_has_class(@pointer.as(LibGtk::ThemingEngine*), style_class.to_unsafe)
      __return_value
    end

    def has_region(style_region, flags : Gtk::RegionFlags?)
      __return_value = LibGtk.theming_engine_has_region(@pointer.as(LibGtk::ThemingEngine*), style_region.to_unsafe, flags)
      __return_value
    end

    def lookup_color(color_name, color)
      __return_value = LibGtk.theming_engine_lookup_color(@pointer.as(LibGtk::ThemingEngine*), color_name.to_unsafe, color)
      __return_value
    end

    def state_is_running(state : Gtk::StateType, progress)
      __return_value = LibGtk.theming_engine_state_is_running(@pointer.as(LibGtk::ThemingEngine*), state, progress)
      __return_value
    end

  end
end

