module Gtk
  class ScaleButtonAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_scale_button_accessible_private)
    end

    def to_unsafe
      @gtk_scale_button_accessible_private.not_nil!
    end

  end
end

