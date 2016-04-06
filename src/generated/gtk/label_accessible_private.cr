module Gtk
  class LabelAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_label_accessible_private)
    end

    def to_unsafe
      @gtk_label_accessible_private.not_nil!
    end

  end
end

