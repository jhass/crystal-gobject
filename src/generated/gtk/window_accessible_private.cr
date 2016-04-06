module Gtk
  class WindowAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_window_accessible_private)
    end

    def to_unsafe
      @gtk_window_accessible_private.not_nil!
    end

  end
end

