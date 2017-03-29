module Gtk
  class TextViewAccessiblePrivate
    include GObject::WrappedType

    @gtk_text_view_accessible_private : LibGtk::TextViewAccessiblePrivate*?
    def initialize(@gtk_text_view_accessible_private : LibGtk::TextViewAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_text_view_accessible_private.not_nil!
    end

  end
end

