module Gtk
  class TreeViewPrivate
    include GObject::WrappedType

    def initialize(@gtk_tree_view_private)
    end

    def to_unsafe
      @gtk_tree_view_private.not_nil!
    end

  end
end

