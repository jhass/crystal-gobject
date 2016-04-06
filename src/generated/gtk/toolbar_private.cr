module Gtk
  class ToolbarPrivate
    include GObject::WrappedType

    def initialize(@gtk_toolbar_private)
    end

    def to_unsafe
      @gtk_toolbar_private.not_nil!
    end

  end
end

