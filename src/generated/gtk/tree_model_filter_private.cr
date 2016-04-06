module Gtk
  class TreeModelFilterPrivate
    include GObject::WrappedType

    def initialize(@gtk_tree_model_filter_private)
    end

    def to_unsafe
      @gtk_tree_model_filter_private.not_nil!
    end

  end
end

