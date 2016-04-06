module Gtk
  class LayoutPrivate
    include GObject::WrappedType

    def initialize(@gtk_layout_private)
    end

    def to_unsafe
      @gtk_layout_private.not_nil!
    end

  end
end

