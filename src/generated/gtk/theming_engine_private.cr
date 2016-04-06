module Gtk
  class ThemingEnginePrivate
    include GObject::WrappedType

    def initialize(@gtk_theming_engine_private)
    end

    def to_unsafe
      @gtk_theming_engine_private.not_nil!
    end

  end
end

