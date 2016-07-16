module Gtk
  class ListStorePrivate
    include GObject::WrappedType

    @gtk_list_store_private : LibGtk::ListStorePrivate*?
    def initialize(@gtk_list_store_private : LibGtk::ListStorePrivate*)
    end

    def to_unsafe
      @gtk_list_store_private.not_nil!.as(Void*)
    end

  end
end

