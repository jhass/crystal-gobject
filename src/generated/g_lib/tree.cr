module GLib
  class Tree
    include GObject::WrappedType

    @g_lib_tree : LibGLib::Tree*?
    def initialize(@g_lib_tree : LibGLib::Tree*)
    end

    def to_unsafe
      @g_lib_tree.not_nil!
    end

    def destroy
      LibGLib.tree_destroy(to_unsafe.as(LibGLib::Tree*))
      nil
    end

    def height
      __return_value = LibGLib.tree_height(to_unsafe.as(LibGLib::Tree*))
      __return_value
    end

    def insert(key, value)
      LibGLib.tree_insert(to_unsafe.as(LibGLib::Tree*), key ? key : nil, value ? value : nil)
      nil
    end

    def lookup(key)
      LibGLib.tree_lookup(to_unsafe.as(LibGLib::Tree*), key ? key : nil)
      nil
    end

    def lookup_extended(lookup_key, orig_key, value)
      __return_value = LibGLib.tree_lookup_extended(to_unsafe.as(LibGLib::Tree*), lookup_key ? lookup_key : nil, orig_key ? orig_key : nil, value ? value : nil)
      __return_value
    end

    def nnodes
      __return_value = LibGLib.tree_nnodes(to_unsafe.as(LibGLib::Tree*))
      __return_value
    end

    def remove(key)
      __return_value = LibGLib.tree_remove(to_unsafe.as(LibGLib::Tree*), key ? key : nil)
      __return_value
    end

    def replace(key, value)
      LibGLib.tree_replace(to_unsafe.as(LibGLib::Tree*), key ? key : nil, value ? value : nil)
      nil
    end

    def steal(key)
      __return_value = LibGLib.tree_steal(to_unsafe.as(LibGLib::Tree*), key ? key : nil)
      __return_value
    end

    def unref
      LibGLib.tree_unref(to_unsafe.as(LibGLib::Tree*))
      nil
    end

  end
end

