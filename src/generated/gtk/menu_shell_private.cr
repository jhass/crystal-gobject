module Gtk
  class MenuShellPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::MenuShellPrivate*))
    end

    @gtk_menu_shell_private : LibGtk::MenuShellPrivate*?
    def initialize(@gtk_menu_shell_private : LibGtk::MenuShellPrivate*)
    end

    def to_unsafe
      @gtk_menu_shell_private.not_nil!.as(Void*)
    end

  end
end

