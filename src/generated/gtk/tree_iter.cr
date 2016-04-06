module Gtk
  class TreeIter
    include GObject::WrappedType

    def initialize(@gtk_tree_iter)
    end

    def to_unsafe
      @gtk_tree_iter.not_nil!
    end

    def copy
      __return_value = LibGtk.tree_iter_copy((to_unsafe as LibGtk::TreeIter*))
      Gtk::TreeIter.new(__return_value)
    end

    def free
      __return_value = LibGtk.tree_iter_free((to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

  end
end

