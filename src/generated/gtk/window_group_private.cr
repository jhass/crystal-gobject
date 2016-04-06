module Gtk
  class WindowGroupPrivate
    include GObject::WrappedType

    def initialize(@gtk_window_group_private)
    end

    def to_unsafe
      @gtk_window_group_private.not_nil!
    end

  end
end

