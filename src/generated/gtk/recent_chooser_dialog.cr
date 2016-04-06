require "./dialog"

module Gtk
  class RecentChooserDialog < Dialog
    def initialize(@gtk_recent_chooser_dialog)
    end

    def to_unsafe
      @gtk_recent_chooser_dialog.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements RecentChooser
  end
end

