module Gtk
  class StatusbarAccessiblePrivate
    include GObject::WrappedType

    @gtk_statusbar_accessible_private : LibGtk::StatusbarAccessiblePrivate*?
    def initialize(@gtk_statusbar_accessible_private : LibGtk::StatusbarAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_statusbar_accessible_private.not_nil!.as(Void*)
    end

  end
end

