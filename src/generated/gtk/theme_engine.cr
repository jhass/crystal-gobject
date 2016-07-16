module Gtk
  class ThemeEngine
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ThemeEngine*))
    end

    @gtk_theme_engine : LibGtk::ThemeEngine*?
    def initialize(@gtk_theme_engine : LibGtk::ThemeEngine*)
    end

    def to_unsafe
      @gtk_theme_engine.not_nil!
    end

  end
end

