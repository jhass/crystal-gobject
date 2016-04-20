module Gtk
  class StatusIconPrivate
    include GObject::WrappedType

    @gtk_status_icon_private : LibGtk::StatusIconPrivate*?
    def initialize(@gtk_status_icon_private : LibGtk::StatusIconPrivate*)
    end

    def to_unsafe
      @gtk_status_icon_private.not_nil!
    end

  end
end

