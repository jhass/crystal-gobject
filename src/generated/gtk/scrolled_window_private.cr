module Gtk
  class ScrolledWindowPrivate
    include GObject::WrappedType

    @gtk_scrolled_window_private : LibGtk::ScrolledWindowPrivate*?
    def initialize(@gtk_scrolled_window_private : LibGtk::ScrolledWindowPrivate*)
    end

    def to_unsafe
      @gtk_scrolled_window_private.not_nil!.as(Void*)
    end

  end
end

