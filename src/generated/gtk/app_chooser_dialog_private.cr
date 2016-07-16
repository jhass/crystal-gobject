module Gtk
  class AppChooserDialogPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::AppChooserDialogPrivate*))
    end

    @gtk_app_chooser_dialog_private : LibGtk::AppChooserDialogPrivate*?
    def initialize(@gtk_app_chooser_dialog_private : LibGtk::AppChooserDialogPrivate*)
    end

    def to_unsafe
      @gtk_app_chooser_dialog_private.not_nil!.as(Void*)
    end

  end
end

