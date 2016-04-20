module Gtk
  class TextTagPrivate
    include GObject::WrappedType

    @gtk_text_tag_private : LibGtk::TextTagPrivate*?
    def initialize(@gtk_text_tag_private : LibGtk::TextTagPrivate*)
    end

    def to_unsafe
      @gtk_text_tag_private.not_nil!
    end

  end
end

