module Gtk
  class ListStorePrivate
    include GObject::WrappedType

    def initialize(@gtk_list_store_private)
    end

    def to_unsafe
      @gtk_list_store_private.not_nil!
    end

  end
end

