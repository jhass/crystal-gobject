module Gtk
  class RecentChooserMenuPrivate
    include GObject::WrappedType

    @gtk_recent_chooser_menu_private : LibGtk::RecentChooserMenuPrivate*?
    def initialize(@gtk_recent_chooser_menu_private : LibGtk::RecentChooserMenuPrivate*)
    end

    def to_unsafe
      @gtk_recent_chooser_menu_private.not_nil!
    end

  end
end

