module Gtk
  class TextViewPrivate
    include GObject::WrappedType

    @gtk_text_view_private : LibGtk::TextViewPrivate*?
    def initialize(@gtk_text_view_private : LibGtk::TextViewPrivate*)
    end

    def to_unsafe
      @gtk_text_view_private.not_nil!.as(Void*)
    end

  end
end

