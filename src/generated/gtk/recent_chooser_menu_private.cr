module Gtk
  class RecentChooserMenuPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::RecentChooserMenuPrivate*))
    end

    @gtk_recent_chooser_menu_private : LibGtk::RecentChooserMenuPrivate*?
    def initialize(@gtk_recent_chooser_menu_private : LibGtk::RecentChooserMenuPrivate*)
    end

    def to_unsafe
      @gtk_recent_chooser_menu_private.not_nil!.as(Void*)
    end

  end
end

