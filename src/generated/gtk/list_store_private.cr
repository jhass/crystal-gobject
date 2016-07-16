module Gtk
  class ListStorePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ListStorePrivate*))
    end

    @gtk_list_store_private : LibGtk::ListStorePrivate*?
    def initialize(@gtk_list_store_private : LibGtk::ListStorePrivate*)
    end

    def to_unsafe
      @gtk_list_store_private.not_nil!
    end

  end
end

