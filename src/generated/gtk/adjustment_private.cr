module Gtk
  class AdjustmentPrivate
    include GObject::WrappedType

    def initialize(@gtk_adjustment_private)
    end

    def to_unsafe
      @gtk_adjustment_private.not_nil!
    end

  end
end

