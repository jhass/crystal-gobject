module Gtk
  class TreeSelectionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TreeSelectionPrivate*))
    end

    @gtk_tree_selection_private : LibGtk::TreeSelectionPrivate*?
    def initialize(@gtk_tree_selection_private : LibGtk::TreeSelectionPrivate*)
    end

    def to_unsafe
      @gtk_tree_selection_private.not_nil!.as(Void*)
    end

  end
end

