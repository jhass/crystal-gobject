module Gtk
  class TreeViewColumnPrivate
    include GObject::WrappedType

    @gtk_tree_view_column_private : LibGtk::TreeViewColumnPrivate*?
    def initialize(@gtk_tree_view_column_private : LibGtk::TreeViewColumnPrivate*)
    end

    def to_unsafe
      @gtk_tree_view_column_private.not_nil!
    end

  end
end

