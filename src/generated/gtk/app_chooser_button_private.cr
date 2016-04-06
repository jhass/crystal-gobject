module Gtk
  class AppChooserButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_app_chooser_button_private)
    end

    def to_unsafe
      @gtk_app_chooser_button_private.not_nil!
    end

  end
end

