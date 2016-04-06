module Gtk
  class ExpanderAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_expander_accessible_private)
    end

    def to_unsafe
      @gtk_expander_accessible_private.not_nil!
    end

  end
end

