module Gtk
  class TreeViewColumnPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TreeViewColumnPrivate*))
    end

    @gtk_tree_view_column_private : LibGtk::TreeViewColumnPrivate*?
    def initialize(@gtk_tree_view_column_private : LibGtk::TreeViewColumnPrivate*)
    end

    def to_unsafe
      @gtk_tree_view_column_private.not_nil!
    end

  end
end

