module Gtk
  class MessageDialogPrivate
    include GObject::WrappedType

    @gtk_message_dialog_private : LibGtk::MessageDialogPrivate*?
    def initialize(@gtk_message_dialog_private : LibGtk::MessageDialogPrivate*)
    end

    def to_unsafe
      @gtk_message_dialog_private.not_nil!.as(Void*)
    end

  end
end

