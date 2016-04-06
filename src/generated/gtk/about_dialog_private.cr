module Gtk
  class AboutDialogPrivate
    include GObject::WrappedType

    def initialize(@gtk_about_dialog_private)
    end

    def to_unsafe
      @gtk_about_dialog_private.not_nil!
    end

  end
end

