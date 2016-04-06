module Gtk
  class StyleContextPrivate
    include GObject::WrappedType

    def initialize(@gtk_style_context_private)
    end

    def to_unsafe
      @gtk_style_context_private.not_nil!
    end

  end
end

