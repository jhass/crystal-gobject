module Gtk
  class TreeModelFilterPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TreeModelFilterPrivate*))
    end

    @gtk_tree_model_filter_private : LibGtk::TreeModelFilterPrivate*?
    def initialize(@gtk_tree_model_filter_private : LibGtk::TreeModelFilterPrivate*)
    end

    def to_unsafe
      @gtk_tree_model_filter_private.not_nil!
    end

  end
end

