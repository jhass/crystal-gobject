module Gtk
  class RecentChooserDialogPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::RecentChooserDialogPrivate*))
    end

    @gtk_recent_chooser_dialog_private : LibGtk::RecentChooserDialogPrivate*?
    def initialize(@gtk_recent_chooser_dialog_private : LibGtk::RecentChooserDialogPrivate*)
    end

    def to_unsafe
      @gtk_recent_chooser_dialog_private.not_nil!.as(Void*)
    end

  end
end

