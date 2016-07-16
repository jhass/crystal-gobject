module Gtk
  class SettingsPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::SettingsPrivate*))
    end

    @gtk_settings_private : LibGtk::SettingsPrivate*?
    def initialize(@gtk_settings_private : LibGtk::SettingsPrivate*)
    end

    def to_unsafe
      @gtk_settings_private.not_nil!
    end

  end
end

