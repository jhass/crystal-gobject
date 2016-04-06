module Gtk
  class SettingsValue
    include GObject::WrappedType

    def initialize(@gtk_settings_value)
    end

    def to_unsafe
      @gtk_settings_value.not_nil!
    end

  end
end

