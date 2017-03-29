module Gtk
  class TreeModelSortPrivate
    include GObject::WrappedType

    @gtk_tree_model_sort_private : LibGtk::TreeModelSortPrivate*?
    def initialize(@gtk_tree_model_sort_private : LibGtk::TreeModelSortPrivate*)
    end

    def to_unsafe
      @gtk_tree_model_sort_private.not_nil!
    end

  end
end

