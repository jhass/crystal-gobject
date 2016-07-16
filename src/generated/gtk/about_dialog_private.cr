module Gtk
  class AboutDialogPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::AboutDialogPrivate*))
    end

    @gtk_about_dialog_private : LibGtk::AboutDialogPrivate*?
    def initialize(@gtk_about_dialog_private : LibGtk::AboutDialogPrivate*)
    end

    def to_unsafe
      @gtk_about_dialog_private.not_nil!
    end

  end
end

