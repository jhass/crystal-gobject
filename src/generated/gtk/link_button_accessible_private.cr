module Gtk
  class LinkButtonAccessiblePrivate
    include GObject::WrappedType

    @gtk_link_button_accessible_private : LibGtk::LinkButtonAccessiblePrivate*?
    def initialize(@gtk_link_button_accessible_private : LibGtk::LinkButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_link_button_accessible_private.not_nil!.as(Void*)
    end

  end
end

