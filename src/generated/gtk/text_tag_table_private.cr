module Gtk
  class TextTagTablePrivate
    include GObject::WrappedType

    def initialize(@gtk_text_tag_table_private)
    end

    def to_unsafe
      @gtk_text_tag_table_private.not_nil!
    end

  end
end

