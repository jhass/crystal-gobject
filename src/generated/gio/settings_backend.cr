module Gio
  class SettingsBackend
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::SettingsBackend*))
    end

    @gio_settings_backend : LibGio::SettingsBackend*?
    def initialize(@gio_settings_backend : LibGio::SettingsBackend*)
    end

    def to_unsafe
      @gio_settings_backend.not_nil!.as(Void*)
    end

  end
end

