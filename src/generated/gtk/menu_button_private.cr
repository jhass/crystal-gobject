module Gtk
  class MenuButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_menu_button_private)
    end

    def to_unsafe
      @gtk_menu_button_private.not_nil!
    end

  end
end

