module Gtk
  class TreeStorePrivate
    include GObject::WrappedType

    def initialize(@gtk_tree_store_private)
    end

    def to_unsafe
      @gtk_tree_store_private.not_nil!
    end

  end
end

