module Gtk
  class ButtonPrivate
    include GObject::WrappedType

    @gtk_button_private : LibGtk::ButtonPrivate*?
    def initialize(@gtk_button_private : LibGtk::ButtonPrivate*)
    end

    def to_unsafe
      @gtk_button_private.not_nil!.as(Void*)
    end

  end
end

