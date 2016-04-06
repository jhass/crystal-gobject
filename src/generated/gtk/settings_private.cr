module Gtk
  class SettingsPrivate
    include GObject::WrappedType

    def initialize(@gtk_settings_private)
    end

    def to_unsafe
      @gtk_settings_private.not_nil!
    end

  end
end

