module Gtk
  class AccelLabelPrivate
    include GObject::WrappedType

    def initialize(@gtk_accel_label_private)
    end

    def to_unsafe
      @gtk_accel_label_private.not_nil!
    end

  end
end

