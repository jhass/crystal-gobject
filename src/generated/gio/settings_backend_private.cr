module Gio
  class SettingsBackendPrivate
    include GObject::WrappedType

    @gio_settings_backend_private : LibGio::SettingsBackendPrivate*?
    def initialize(@gio_settings_backend_private : LibGio::SettingsBackendPrivate*)
    end

    def to_unsafe
      @gio_settings_backend_private.not_nil!
    end

  end
end

