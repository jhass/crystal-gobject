module Gtk
  class FileChooserDialogPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::FileChooserDialogPrivate*))
    end

    @gtk_file_chooser_dialog_private : LibGtk::FileChooserDialogPrivate*?
    def initialize(@gtk_file_chooser_dialog_private : LibGtk::FileChooserDialogPrivate*)
    end

    def to_unsafe
      @gtk_file_chooser_dialog_private.not_nil!.as(Void*)
    end

  end
end

