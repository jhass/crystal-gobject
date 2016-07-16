module Gtk
  class SpinnerAccessiblePrivate
    include GObject::WrappedType

    @gtk_spinner_accessible_private : LibGtk::SpinnerAccessiblePrivate*?
    def initialize(@gtk_spinner_accessible_private : LibGtk::SpinnerAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_spinner_accessible_private.not_nil!.as(Void*)
    end

  end
end

