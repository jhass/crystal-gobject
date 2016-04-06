module Gtk
  class Settings < GObject::Object
    def initialize(@gtk_settings)
    end

    def to_unsafe
      @gtk_settings.not_nil!
    end

    # Implements StyleProvider


















































































    def self.default
      __return_value = LibGtk.settings_get_default
      Gtk::Settings.new(__return_value)
    end

    def self.for_screen(screen)
      __return_value = LibGtk.settings_get_for_screen((screen.to_unsafe as LibGdk::Screen*))
      Gtk::Settings.new(__return_value)
    end

    def self.install_property(pspec)
      __return_value = LibGtk.settings_install_property((pspec.to_unsafe as LibGObject::ParamSpec*))
      __return_value
    end

    def self.install_property_parser(pspec, parser : LibGtk::RcPropertyParser)
      __return_value = LibGtk.settings_install_property_parser((pspec.to_unsafe as LibGObject::ParamSpec*), parser)
      __return_value
    end

    def set_double_property(name, v_double, origin)
      __return_value = LibGtk.settings_set_double_property((to_unsafe as LibGtk::Settings*), name, Float64.new(v_double), origin)
      __return_value
    end

    def set_long_property(name, v_long, origin)
      __return_value = LibGtk.settings_set_long_property((to_unsafe as LibGtk::Settings*), name, Int64.new(v_long), origin)
      __return_value
    end

    def set_property_value(name, svalue)
      __return_value = LibGtk.settings_set_property_value((to_unsafe as LibGtk::Settings*), name, (svalue.to_unsafe as LibGtk::SettingsValue*))
      __return_value
    end

    def set_string_property(name, v_string, origin)
      __return_value = LibGtk.settings_set_string_property((to_unsafe as LibGtk::Settings*), name, v_string, origin)
      __return_value
    end

  end
end

