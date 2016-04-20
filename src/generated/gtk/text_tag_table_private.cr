module Gtk
  class TextTagTablePrivate
    include GObject::WrappedType

    @gtk_text_tag_table_private : LibGtk::TextTagTablePrivate*?
    def initialize(@gtk_text_tag_table_private : LibGtk::TextTagTablePrivate*)
    end

    def to_unsafe
      @gtk_text_tag_table_private.not_nil!
    end

  end
end

