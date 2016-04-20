module Gtk
  class SettingsPrivate
    include GObject::WrappedType

    @gtk_settings_private : LibGtk::SettingsPrivate*?
    def initialize(@gtk_settings_private : LibGtk::SettingsPrivate*)
    end

    def to_unsafe
      @gtk_settings_private.not_nil!
    end

  end
end

