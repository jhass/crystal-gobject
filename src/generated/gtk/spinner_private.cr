module Gtk
  class SpinnerPrivate
    include GObject::WrappedType

    @gtk_spinner_private : LibGtk::SpinnerPrivate*?
    def initialize(@gtk_spinner_private : LibGtk::SpinnerPrivate*)
    end

    def to_unsafe
      @gtk_spinner_private.not_nil!
    end

  end
end

