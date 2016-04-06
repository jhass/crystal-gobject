module Gtk
  class StatusbarPrivate
    include GObject::WrappedType

    def initialize(@gtk_statusbar_private)
    end

    def to_unsafe
      @gtk_statusbar_private.not_nil!
    end

  end
end

