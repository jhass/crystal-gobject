module Gtk
  class AboutDialogPrivate
    include GObject::WrappedType

    @gtk_about_dialog_private : LibGtk::AboutDialogPrivate*?
    def initialize(@gtk_about_dialog_private : LibGtk::AboutDialogPrivate*)
    end

    def to_unsafe
      @gtk_about_dialog_private.not_nil!.as(Void*)
    end

  end
end

