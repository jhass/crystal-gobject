module Gtk
  class TearoffMenuItemPrivate
    include GObject::WrappedType

    @gtk_tearoff_menu_item_private : LibGtk::TearoffMenuItemPrivate*?
    def initialize(@gtk_tearoff_menu_item_private : LibGtk::TearoffMenuItemPrivate*)
    end

    def to_unsafe
      @gtk_tearoff_menu_item_private.not_nil!.as(Void*)
    end

  end
end

