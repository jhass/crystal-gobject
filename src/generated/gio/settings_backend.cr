module Gio
  class SettingsBackend
    include GObject::WrappedType

    def initialize(@gio_settings_backend)
    end

    def to_unsafe
      @gio_settings_backend.not_nil!
    end

  end
end

