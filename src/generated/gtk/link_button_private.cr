module Gtk
  class LinkButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_link_button_private)
    end

    def to_unsafe
      @gtk_link_button_private.not_nil!
    end

  end
end

