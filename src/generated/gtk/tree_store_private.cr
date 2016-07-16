module Gtk
  class TreeStorePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TreeStorePrivate*))
    end

    @gtk_tree_store_private : LibGtk::TreeStorePrivate*?
    def initialize(@gtk_tree_store_private : LibGtk::TreeStorePrivate*)
    end

    def to_unsafe
      @gtk_tree_store_private.not_nil!
    end

  end
end

