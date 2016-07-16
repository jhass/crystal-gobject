module Gtk
  class TextTagTablePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TextTagTablePrivate*))
    end

    @gtk_text_tag_table_private : LibGtk::TextTagTablePrivate*?
    def initialize(@gtk_text_tag_table_private : LibGtk::TextTagTablePrivate*)
    end

    def to_unsafe
      @gtk_text_tag_table_private.not_nil!.as(Void*)
    end

  end
end

