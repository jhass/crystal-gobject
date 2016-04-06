module GLib
  class Tree
    include GObject::WrappedType

    def initialize(@g_lib_tree)
    end

    def to_unsafe
      @g_lib_tree.not_nil!
    end

    def destroy
      __return_value = LibGLib.tree_destroy((to_unsafe as LibGLib::Tree*))
      __return_value
    end

    def height
      __return_value = LibGLib.tree_height((to_unsafe as LibGLib::Tree*))
      __return_value
    end

    def insert(key, value)
      __return_value = LibGLib.tree_insert((to_unsafe as LibGLib::Tree*), key, value)
      __return_value
    end

    def lookup_extended(lookup_key, orig_key, value)
      __return_value = LibGLib.tree_lookup_extended((to_unsafe as LibGLib::Tree*), lookup_key, orig_key, value)
      __return_value
    end

    def nnodes
      __return_value = LibGLib.tree_nnodes((to_unsafe as LibGLib::Tree*))
      __return_value
    end

    def remove(key)
      __return_value = LibGLib.tree_remove((to_unsafe as LibGLib::Tree*), key)
      __return_value
    end

    def replace(key, value)
      __return_value = LibGLib.tree_replace((to_unsafe as LibGLib::Tree*), key, value)
      __return_value
    end

    def steal(key)
      __return_value = LibGLib.tree_steal((to_unsafe as LibGLib::Tree*), key)
      __return_value
    end

    def unref
      __return_value = LibGLib.tree_unref((to_unsafe as LibGLib::Tree*))
      __return_value
    end

  end
end

