module Gtk
  class ThemeEngine
    include GObject::WrappedType

    @gtk_theme_engine : LibGtk::ThemeEngine*?
    def initialize(@gtk_theme_engine : LibGtk::ThemeEngine*)
    end

    def to_unsafe
      @gtk_theme_engine.not_nil!.as(Void*)
    end

  end
end

