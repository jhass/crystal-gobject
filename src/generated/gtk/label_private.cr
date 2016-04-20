module Gtk
  class LabelPrivate
    include GObject::WrappedType

    @gtk_label_private : LibGtk::LabelPrivate*?
    def initialize(@gtk_label_private : LibGtk::LabelPrivate*)
    end

    def to_unsafe
      @gtk_label_private.not_nil!
    end

  end
end

