module Gtk
  class LabelAccessiblePrivate
    include GObject::WrappedType

    @gtk_label_accessible_private : LibGtk::LabelAccessiblePrivate*?
    def initialize(@gtk_label_accessible_private : LibGtk::LabelAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_label_accessible_private.not_nil!.as(Void*)
    end

  end
end

