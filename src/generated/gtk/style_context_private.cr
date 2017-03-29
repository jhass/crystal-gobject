module Gtk
  class StyleContextPrivate
    include GObject::WrappedType

    @gtk_style_context_private : LibGtk::StyleContextPrivate*?
    def initialize(@gtk_style_context_private : LibGtk::StyleContextPrivate*)
    end

    def to_unsafe
      @gtk_style_context_private.not_nil!
    end

  end
end

