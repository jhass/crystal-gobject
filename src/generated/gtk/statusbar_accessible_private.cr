module Gtk
  class StatusbarAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_statusbar_accessible_private)
    end

    def to_unsafe
      @gtk_statusbar_accessible_private.not_nil!
    end

  end
end

