module Gtk
  class TreeRowReference
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TreeRowReference*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TreeRowReference*)
    end

    def self.new(model, path) : self
      __return_value = LibGtk.tree_row_reference_new(model.to_unsafe.as(LibGtk::TreeModel*), path.to_unsafe.as(LibGtk::TreePath*))
      cast Gtk::TreeRowReference.new(__return_value)
    end

    def self.new_proxy(proxy, model, path) : self
      __return_value = LibGtk.tree_row_reference_new_proxy(proxy.to_unsafe.as(LibGObject::Object*), model.to_unsafe.as(LibGtk::TreeModel*), path.to_unsafe.as(LibGtk::TreePath*))
      cast Gtk::TreeRowReference.new(__return_value)
    end

    def copy
      __return_value = LibGtk.tree_row_reference_copy(@pointer.as(LibGtk::TreeRowReference*))
      Gtk::TreeRowReference.new(__return_value)
    end

    def free
      LibGtk.tree_row_reference_free(@pointer.as(LibGtk::TreeRowReference*))
      nil
    end

    def model
      __return_value = LibGtk.tree_row_reference_get_model(@pointer.as(LibGtk::TreeRowReference*))
      __return_value
    end

    def path
      __return_value = LibGtk.tree_row_reference_get_path(@pointer.as(LibGtk::TreeRowReference*))
      Gtk::TreePath.new(__return_value) if __return_value
    end

    def valid
      __return_value = LibGtk.tree_row_reference_valid(@pointer.as(LibGtk::TreeRowReference*))
      __return_value
    end

    def self.deleted(proxy, path)
      LibGtk.tree_row_reference_deleted(proxy.to_unsafe.as(LibGObject::Object*), path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

    def self.inserted(proxy, path)
      LibGtk.tree_row_reference_inserted(proxy.to_unsafe.as(LibGObject::Object*), path.to_unsafe.as(LibGtk::TreePath*))
      nil
    end

  end
end

