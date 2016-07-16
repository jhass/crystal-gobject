module Gtk
  class TreeViewPrivate
    include GObject::WrappedType

    @gtk_tree_view_private : LibGtk::TreeViewPrivate*?
    def initialize(@gtk_tree_view_private : LibGtk::TreeViewPrivate*)
    end

    def to_unsafe
      @gtk_tree_view_private.not_nil!.as(Void*)
    end

  end
end

