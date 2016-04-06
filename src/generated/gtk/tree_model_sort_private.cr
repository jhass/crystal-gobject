module Gtk
  class TreeModelSortPrivate
    include GObject::WrappedType

    def initialize(@gtk_tree_model_sort_private)
    end

    def to_unsafe
      @gtk_tree_model_sort_private.not_nil!
    end

  end
end

