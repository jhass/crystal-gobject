module Gtk
  class TreeViewAccessiblePrivate
    include GObject::WrappedType

    @gtk_tree_view_accessible_private : LibGtk::TreeViewAccessiblePrivate*?
    def initialize(@gtk_tree_view_accessible_private : LibGtk::TreeViewAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_tree_view_accessible_private.not_nil!.as(Void*)
    end

  end
end

