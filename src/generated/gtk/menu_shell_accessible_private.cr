module Gtk
  class MenuShellAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::MenuShellAccessiblePrivate*))
    end

    @gtk_menu_shell_accessible_private : LibGtk::MenuShellAccessiblePrivate*?
    def initialize(@gtk_menu_shell_accessible_private : LibGtk::MenuShellAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_menu_shell_accessible_private.not_nil!
    end

  end
end

