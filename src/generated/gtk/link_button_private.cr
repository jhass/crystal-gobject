module Gtk
  class LinkButtonPrivate
    include GObject::WrappedType

    @gtk_link_button_private : LibGtk::LinkButtonPrivate*?
    def initialize(@gtk_link_button_private : LibGtk::LinkButtonPrivate*)
    end

    def to_unsafe
      @gtk_link_button_private.not_nil!
    end

  end
end

