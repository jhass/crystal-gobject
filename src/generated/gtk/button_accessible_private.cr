module Gtk
  class ButtonAccessiblePrivate
    include GObject::WrappedType

    @gtk_button_accessible_private : LibGtk::ButtonAccessiblePrivate*?
    def initialize(@gtk_button_accessible_private : LibGtk::ButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_button_accessible_private.not_nil!
    end

  end
end

