module Gtk
  class TreeViewColumnPrivate
    include GObject::WrappedType

    def initialize(@gtk_tree_view_column_private)
    end

    def to_unsafe
      @gtk_tree_view_column_private.not_nil!
    end

  end
end

