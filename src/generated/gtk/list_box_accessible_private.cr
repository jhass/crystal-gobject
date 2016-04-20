module Gtk
  class ListBoxAccessiblePrivate
    include GObject::WrappedType

    @gtk_list_box_accessible_private : LibGtk::ListBoxAccessiblePrivate*?
    def initialize(@gtk_list_box_accessible_private : LibGtk::ListBoxAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_list_box_accessible_private.not_nil!
    end

  end
end

