module Gtk
  class WindowPrivate
    include GObject::WrappedType

    @gtk_window_private : LibGtk::WindowPrivate*?
    def initialize(@gtk_window_private : LibGtk::WindowPrivate*)
    end

    def to_unsafe
      @gtk_window_private.not_nil!
    end

  end
end

