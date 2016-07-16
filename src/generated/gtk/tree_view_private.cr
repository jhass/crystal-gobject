module Gtk
  class TreeViewPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TreeViewPrivate*))
    end

    @gtk_tree_view_private : LibGtk::TreeViewPrivate*?
    def initialize(@gtk_tree_view_private : LibGtk::TreeViewPrivate*)
    end

    def to_unsafe
      @gtk_tree_view_private.not_nil!
    end

  end
end

