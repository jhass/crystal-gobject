module Gtk
  class TreeViewAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TreeViewAccessiblePrivate*))
    end

    @gtk_tree_view_accessible_private : LibGtk::TreeViewAccessiblePrivate*?
    def initialize(@gtk_tree_view_accessible_private : LibGtk::TreeViewAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_tree_view_accessible_private.not_nil!
    end

  end
end

