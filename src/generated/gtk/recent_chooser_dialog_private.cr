module Gtk
  class RecentChooserDialogPrivate
    include GObject::WrappedType

    def initialize(@gtk_recent_chooser_dialog_private)
    end

    def to_unsafe
      @gtk_recent_chooser_dialog_private.not_nil!
    end

  end
end

