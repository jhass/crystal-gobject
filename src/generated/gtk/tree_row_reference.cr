module Gtk
  class TreeRowReference
    include GObject::WrappedType

    def initialize(@gtk_tree_row_reference)
    end

    def to_unsafe
      @gtk_tree_row_reference.not_nil!
    end

    def self.new_internal(model, path)
      __return_value = LibGtk.tree_row_reference_new((model.to_unsafe as LibGtk::TreeModel*), (path.to_unsafe as LibGtk::TreePath*))
      Gtk::TreeRowReference.new(__return_value)
    end

    def self.new_proxy(proxy, model, path)
      __return_value = LibGtk.tree_row_reference_new_proxy((proxy.to_unsafe as LibGObject::Object*), (model.to_unsafe as LibGtk::TreeModel*), (path.to_unsafe as LibGtk::TreePath*))
      Gtk::TreeRowReference.new(__return_value)
    end

    def copy
      __return_value = LibGtk.tree_row_reference_copy((to_unsafe as LibGtk::TreeRowReference*))
      Gtk::TreeRowReference.new(__return_value)
    end

    def free
      __return_value = LibGtk.tree_row_reference_free((to_unsafe as LibGtk::TreeRowReference*))
      __return_value
    end

    def model
      __return_value = LibGtk.tree_row_reference_get_model((to_unsafe as LibGtk::TreeRowReference*))
      __return_value
    end

    def path
      __return_value = LibGtk.tree_row_reference_get_path((to_unsafe as LibGtk::TreeRowReference*))
      Gtk::TreePath.new(__return_value) if __return_value
    end

    def valid
      __return_value = LibGtk.tree_row_reference_valid((to_unsafe as LibGtk::TreeRowReference*))
      __return_value
    end

    def self.deleted(proxy, path)
      __return_value = LibGtk.tree_row_reference_deleted((proxy.to_unsafe as LibGObject::Object*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def self.inserted(proxy, path)
      __return_value = LibGtk.tree_row_reference_inserted((proxy.to_unsafe as LibGObject::Object*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

  end
end

