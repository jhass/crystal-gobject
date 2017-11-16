module GLib
  class Tree
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::Tree*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Tree*)
    end

    def destroy
      LibGLib.tree_destroy(@pointer.as(LibGLib::Tree*))
      nil
    end

    def height
      __return_value = LibGLib.tree_height(@pointer.as(LibGLib::Tree*))
      __return_value
    end

    def insert(key, value)
      LibGLib.tree_insert(@pointer.as(LibGLib::Tree*), key ? key : nil, value ? value : nil)
      nil
    end

    def lookup(key)
      LibGLib.tree_lookup(@pointer.as(LibGLib::Tree*), key ? key : nil)
      nil
    end

    def lookup_extended(lookup_key, orig_key, value)
      __return_value = LibGLib.tree_lookup_extended(@pointer.as(LibGLib::Tree*), lookup_key ? lookup_key : nil, orig_key ? orig_key : nil, value ? value : nil)
      __return_value
    end

    def nnodes
      __return_value = LibGLib.tree_nnodes(@pointer.as(LibGLib::Tree*))
      __return_value
    end

    def remove(key)
      __return_value = LibGLib.tree_remove(@pointer.as(LibGLib::Tree*), key ? key : nil)
      __return_value
    end

    def replace(key, value)
      LibGLib.tree_replace(@pointer.as(LibGLib::Tree*), key ? key : nil, value ? value : nil)
      nil
    end

    def steal(key)
      __return_value = LibGLib.tree_steal(@pointer.as(LibGLib::Tree*), key ? key : nil)
      __return_value
    end

    def unref
      LibGLib.tree_unref(@pointer.as(LibGLib::Tree*))
      nil
    end

  end
end

