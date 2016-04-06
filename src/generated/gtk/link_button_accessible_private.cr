module Gtk
  class LinkButtonAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_link_button_accessible_private)
    end

    def to_unsafe
      @gtk_link_button_accessible_private.not_nil!
    end

  end
end

