module Gtk
  class ApplicationWindowPrivate
    include GObject::WrappedType

    @gtk_application_window_private : LibGtk::ApplicationWindowPrivate*?
    def initialize(@gtk_application_window_private : LibGtk::ApplicationWindowPrivate*)
    end

    def to_unsafe
      @gtk_application_window_private.not_nil!
    end

  end
end

