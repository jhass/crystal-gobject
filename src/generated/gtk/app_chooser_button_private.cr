module Gtk
  class AppChooserButtonPrivate
    include GObject::WrappedType

    @gtk_app_chooser_button_private : LibGtk::AppChooserButtonPrivate*?
    def initialize(@gtk_app_chooser_button_private : LibGtk::AppChooserButtonPrivate*)
    end

    def to_unsafe
      @gtk_app_chooser_button_private.not_nil!
    end

  end
end

