module Gtk
  class MenuBarPrivate
    include GObject::WrappedType

    def initialize(@gtk_menu_bar_private)
    end

    def to_unsafe
      @gtk_menu_bar_private.not_nil!
    end

  end
end

