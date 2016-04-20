module Gtk
  class ApplicationPrivate
    include GObject::WrappedType

    @gtk_application_private : LibGtk::ApplicationPrivate*?
    def initialize(@gtk_application_private : LibGtk::ApplicationPrivate*)
    end

    def to_unsafe
      @gtk_application_private.not_nil!
    end

  end
end

