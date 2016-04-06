module Gtk
  class MenuPrivate
    include GObject::WrappedType

    def initialize(@gtk_menu_private)
    end

    def to_unsafe
      @gtk_menu_private.not_nil!
    end

  end
end

