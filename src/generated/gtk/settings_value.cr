module Gtk
  class SettingsValue
    include GObject::WrappedType

    @gtk_settings_value : LibGtk::SettingsValue*?
    def initialize(@gtk_settings_value : LibGtk::SettingsValue*)
    end

    def to_unsafe
      @gtk_settings_value.not_nil!
    end

  end
end

