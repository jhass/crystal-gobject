module Gtk
  class TextTagPrivate
    include GObject::WrappedType

    def initialize(@gtk_text_tag_private)
    end

    def to_unsafe
      @gtk_text_tag_private.not_nil!
    end

  end
end

