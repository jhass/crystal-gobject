module Gtk
  class MenuPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::MenuPrivate*))
    end

    @gtk_menu_private : LibGtk::MenuPrivate*?
    def initialize(@gtk_menu_private : LibGtk::MenuPrivate*)
    end

    def to_unsafe
      @gtk_menu_private.not_nil!
    end

  end
end

