module Gtk
  class MenuBarPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::MenuBarPrivate*))
    end

    @gtk_menu_bar_private : LibGtk::MenuBarPrivate*?
    def initialize(@gtk_menu_bar_private : LibGtk::MenuBarPrivate*)
    end

    def to_unsafe
      @gtk_menu_bar_private.not_nil!
    end

  end
end

