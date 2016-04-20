module Gtk
  class ThemingEnginePrivate
    include GObject::WrappedType

    @gtk_theming_engine_private : LibGtk::ThemingEnginePrivate*?
    def initialize(@gtk_theming_engine_private : LibGtk::ThemingEnginePrivate*)
    end

    def to_unsafe
      @gtk_theming_engine_private.not_nil!
    end

  end
end

