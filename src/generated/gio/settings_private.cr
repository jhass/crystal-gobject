module Gio
  class SettingsPrivate
    include GObject::WrappedType

    def initialize(@gio_settings_private)
    end

    def to_unsafe
      @gio_settings_private.not_nil!
    end

  end
end

