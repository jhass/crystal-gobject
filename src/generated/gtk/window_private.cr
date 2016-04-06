module Gtk
  class WindowPrivate
    include GObject::WrappedType

    def initialize(@gtk_window_private)
    end

    def to_unsafe
      @gtk_window_private.not_nil!
    end

  end
end

