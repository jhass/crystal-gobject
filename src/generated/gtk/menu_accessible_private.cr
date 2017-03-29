module Gtk
  class MenuAccessiblePrivate
    include GObject::WrappedType

    @gtk_menu_accessible_private : LibGtk::MenuAccessiblePrivate*?
    def initialize(@gtk_menu_accessible_private : LibGtk::MenuAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_menu_accessible_private.not_nil!
    end

  end
end

