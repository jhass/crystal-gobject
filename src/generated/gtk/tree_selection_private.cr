module Gtk
  class TreeSelectionPrivate
    include GObject::WrappedType

    def initialize(@gtk_tree_selection_private)
    end

    def to_unsafe
      @gtk_tree_selection_private.not_nil!
    end

  end
end

