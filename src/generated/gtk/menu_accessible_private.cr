module Gtk
  class MenuAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_menu_accessible_private)
    end

    def to_unsafe
      @gtk_menu_accessible_private.not_nil!
    end

  end
end

