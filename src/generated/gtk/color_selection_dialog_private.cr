module Gtk
  class ColorSelectionDialogPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ColorSelectionDialogPrivate*))
    end

    @gtk_color_selection_dialog_private : LibGtk::ColorSelectionDialogPrivate*?
    def initialize(@gtk_color_selection_dialog_private : LibGtk::ColorSelectionDialogPrivate*)
    end

    def to_unsafe
      @gtk_color_selection_dialog_private.not_nil!.as(Void*)
    end

  end
end

