module Gtk
  class TextBufferPrivate
    include GObject::WrappedType

    def initialize(@gtk_text_buffer_private)
    end

    def to_unsafe
      @gtk_text_buffer_private.not_nil!
    end

  end
end

