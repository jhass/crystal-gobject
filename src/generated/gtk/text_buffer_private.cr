module Gtk
  class TextBufferPrivate
    include GObject::WrappedType

    @gtk_text_buffer_private : LibGtk::TextBufferPrivate*?
    def initialize(@gtk_text_buffer_private : LibGtk::TextBufferPrivate*)
    end

    def to_unsafe
      @gtk_text_buffer_private.not_nil!
    end

  end
end

