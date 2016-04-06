module Gtk
  class StatusIconPrivate
    include GObject::WrappedType

    def initialize(@gtk_status_icon_private)
    end

    def to_unsafe
      @gtk_status_icon_private.not_nil!
    end

  end
end

