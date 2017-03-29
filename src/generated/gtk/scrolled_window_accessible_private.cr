module Gtk
  class ScrolledWindowAccessiblePrivate
    include GObject::WrappedType

    @gtk_scrolled_window_accessible_private : LibGtk::ScrolledWindowAccessiblePrivate*?
    def initialize(@gtk_scrolled_window_accessible_private : LibGtk::ScrolledWindowAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_scrolled_window_accessible_private.not_nil!
    end

  end
end

