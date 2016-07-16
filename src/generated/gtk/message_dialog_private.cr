module Gtk
  class MessageDialogPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::MessageDialogPrivate*))
    end

    @gtk_message_dialog_private : LibGtk::MessageDialogPrivate*?
    def initialize(@gtk_message_dialog_private : LibGtk::MessageDialogPrivate*)
    end

    def to_unsafe
      @gtk_message_dialog_private.not_nil!.as(Void*)
    end

  end
end

