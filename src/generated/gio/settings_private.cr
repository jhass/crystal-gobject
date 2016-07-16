module Gio
  class SettingsPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::SettingsPrivate*))
    end

    @gio_settings_private : LibGio::SettingsPrivate*?
    def initialize(@gio_settings_private : LibGio::SettingsPrivate*)
    end

    def to_unsafe
      @gio_settings_private.not_nil!.as(Void*)
    end

  end
end

