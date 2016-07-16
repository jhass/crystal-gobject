module Gtk
  class TreeModelFilterPrivate
    include GObject::WrappedType

    @gtk_tree_model_filter_private : LibGtk::TreeModelFilterPrivate*?
    def initialize(@gtk_tree_model_filter_private : LibGtk::TreeModelFilterPrivate*)
    end

    def to_unsafe
      @gtk_tree_model_filter_private.not_nil!.as(Void*)
    end

  end
end

