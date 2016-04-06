module Gtk
  class TearoffMenuItemPrivate
    include GObject::WrappedType

    def initialize(@gtk_tearoff_menu_item_private)
    end

    def to_unsafe
      @gtk_tearoff_menu_item_private.not_nil!
    end

  end
end

