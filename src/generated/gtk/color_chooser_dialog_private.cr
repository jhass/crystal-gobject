module Gtk
  class ColorChooserDialogPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ColorChooserDialogPrivate*))
    end

    @gtk_color_chooser_dialog_private : LibGtk::ColorChooserDialogPrivate*?
    def initialize(@gtk_color_chooser_dialog_private : LibGtk::ColorChooserDialogPrivate*)
    end

    def to_unsafe
      @gtk_color_chooser_dialog_private.not_nil!.as(Void*)
    end

  end
end

