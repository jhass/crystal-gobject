module Gtk
  class ScaleAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_scale_accessible_private)
    end

    def to_unsafe
      @gtk_scale_accessible_private.not_nil!
    end

  end
end

