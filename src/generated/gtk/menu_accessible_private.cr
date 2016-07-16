module Gtk
  class MenuAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::MenuAccessiblePrivate*))
    end

    @gtk_menu_accessible_private : LibGtk::MenuAccessiblePrivate*?
    def initialize(@gtk_menu_accessible_private : LibGtk::MenuAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_menu_accessible_private.not_nil!
    end

  end
end

