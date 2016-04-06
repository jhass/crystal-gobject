module Gtk
  class ThemeEngine
    include GObject::WrappedType

    def initialize(@gtk_theme_engine)
    end

    def to_unsafe
      @gtk_theme_engine.not_nil!
    end

  end
end

