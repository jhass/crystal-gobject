module Gtk
  class AdjustmentPrivate
    include GObject::WrappedType

    @gtk_adjustment_private : LibGtk::AdjustmentPrivate*?
    def initialize(@gtk_adjustment_private : LibGtk::AdjustmentPrivate*)
    end

    def to_unsafe
      @gtk_adjustment_private.not_nil!.as(Void*)
    end

  end
end

