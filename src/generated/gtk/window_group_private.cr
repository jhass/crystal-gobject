module Gtk
  class WindowGroupPrivate
    include GObject::WrappedType

    @gtk_window_group_private : LibGtk::WindowGroupPrivate*?
    def initialize(@gtk_window_group_private : LibGtk::WindowGroupPrivate*)
    end

    def to_unsafe
      @gtk_window_group_private.not_nil!
    end

  end
end

