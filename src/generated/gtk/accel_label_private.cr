module Gtk
  class AccelLabelPrivate
    include GObject::WrappedType

    @gtk_accel_label_private : LibGtk::AccelLabelPrivate*?
    def initialize(@gtk_accel_label_private : LibGtk::AccelLabelPrivate*)
    end

    def to_unsafe
      @gtk_accel_label_private.not_nil!.as(Void*)
    end

  end
end

