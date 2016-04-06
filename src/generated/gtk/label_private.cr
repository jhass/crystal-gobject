module Gtk
  class LabelPrivate
    include GObject::WrappedType

    def initialize(@gtk_label_private)
    end

    def to_unsafe
      @gtk_label_private.not_nil!
    end

  end
end

