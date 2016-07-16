module Gtk
  class TextTagPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TextTagPrivate*))
    end

    @gtk_text_tag_private : LibGtk::TextTagPrivate*?
    def initialize(@gtk_text_tag_private : LibGtk::TextTagPrivate*)
    end

    def to_unsafe
      @gtk_text_tag_private.not_nil!
    end

  end
end

