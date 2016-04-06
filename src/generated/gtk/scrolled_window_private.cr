module Gtk
  class ScrolledWindowPrivate
    include GObject::WrappedType

    def initialize(@gtk_scrolled_window_private)
    end

    def to_unsafe
      @gtk_scrolled_window_private.not_nil!
    end

  end
end

