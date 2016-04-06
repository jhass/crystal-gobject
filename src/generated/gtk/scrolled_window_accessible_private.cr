module Gtk
  class ScrolledWindowAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_scrolled_window_accessible_private)
    end

    def to_unsafe
      @gtk_scrolled_window_accessible_private.not_nil!
    end

  end
end

