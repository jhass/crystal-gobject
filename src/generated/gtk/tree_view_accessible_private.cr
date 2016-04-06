module Gtk
  class TreeViewAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_tree_view_accessible_private)
    end

    def to_unsafe
      @gtk_tree_view_accessible_private.not_nil!
    end

  end
end

