module Gio
  class SettingsPrivate
    include GObject::WrappedType

    @gio_settings_private : LibGio::SettingsPrivate*?
    def initialize(@gio_settings_private : LibGio::SettingsPrivate*)
    end

    def to_unsafe
      @gio_settings_private.not_nil!
    end

  end
end

