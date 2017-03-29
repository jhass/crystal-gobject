module Gtk
  class WindowAccessiblePrivate
    include GObject::WrappedType

    @gtk_window_accessible_private : LibGtk::WindowAccessiblePrivate*?
    def initialize(@gtk_window_accessible_private : LibGtk::WindowAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_window_accessible_private.not_nil!
    end

  end
end

