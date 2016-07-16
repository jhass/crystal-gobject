module Gtk
  class ThemingEnginePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ThemingEnginePrivate*))
    end

    @gtk_theming_engine_private : LibGtk::ThemingEnginePrivate*?
    def initialize(@gtk_theming_engine_private : LibGtk::ThemingEnginePrivate*)
    end

    def to_unsafe
      @gtk_theming_engine_private.not_nil!
    end

  end
end

