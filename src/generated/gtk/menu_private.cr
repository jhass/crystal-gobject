module Gtk
  class MenuPrivate
    include GObject::WrappedType

    @gtk_menu_private : LibGtk::MenuPrivate*?
    def initialize(@gtk_menu_private : LibGtk::MenuPrivate*)
    end

    def to_unsafe
      @gtk_menu_private.not_nil!
    end

  end
end

