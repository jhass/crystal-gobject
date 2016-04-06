module Gtk
  class MessageDialogPrivate
    include GObject::WrappedType

    def initialize(@gtk_message_dialog_private)
    end

    def to_unsafe
      @gtk_message_dialog_private.not_nil!
    end

  end
end

