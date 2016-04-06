module Gtk
  class TextViewPrivate
    include GObject::WrappedType

    def initialize(@gtk_text_view_private)
    end

    def to_unsafe
      @gtk_text_view_private.not_nil!
    end

  end
end

