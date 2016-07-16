module Gtk
  class TreeSelectionPrivate
    include GObject::WrappedType

    @gtk_tree_selection_private : LibGtk::TreeSelectionPrivate*?
    def initialize(@gtk_tree_selection_private : LibGtk::TreeSelectionPrivate*)
    end

    def to_unsafe
      @gtk_tree_selection_private.not_nil!.as(Void*)
    end

  end
end

