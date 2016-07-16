module Gtk
  class StatusbarPrivate
    include GObject::WrappedType

    @gtk_statusbar_private : LibGtk::StatusbarPrivate*?
    def initialize(@gtk_statusbar_private : LibGtk::StatusbarPrivate*)
    end

    def to_unsafe
      @gtk_statusbar_private.not_nil!.as(Void*)
    end

  end
end

