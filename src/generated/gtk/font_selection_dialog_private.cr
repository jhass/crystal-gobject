module Gtk
  class FontSelectionDialogPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::FontSelectionDialogPrivate*))
    end

    @gtk_font_selection_dialog_private : LibGtk::FontSelectionDialogPrivate*?
    def initialize(@gtk_font_selection_dialog_private : LibGtk::FontSelectionDialogPrivate*)
    end

    def to_unsafe
      @gtk_font_selection_dialog_private.not_nil!.as(Void*)
    end

  end
end

