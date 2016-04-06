module Gtk
  class ArrowAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_arrow_accessible_private)
    end

    def to_unsafe
      @gtk_arrow_accessible_private.not_nil!
    end

  end
end

