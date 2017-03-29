module Gtk
  class TreeStorePrivate
    include GObject::WrappedType

    @gtk_tree_store_private : LibGtk::TreeStorePrivate*?
    def initialize(@gtk_tree_store_private : LibGtk::TreeStorePrivate*)
    end

    def to_unsafe
      @gtk_tree_store_private.not_nil!
    end

  end
end

