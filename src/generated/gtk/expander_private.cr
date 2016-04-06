module Gtk
  class ExpanderPrivate
    include GObject::WrappedType

    def initialize(@gtk_expander_private)
    end

    def to_unsafe
      @gtk_expander_private.not_nil!
    end

  end
end

