module GLib
  class HashTableIter
    include GObject::WrappedType

    def initialize(@g_lib_hash_table_iter)
    end

    def to_unsafe
      @g_lib_hash_table_iter.not_nil!
    end

    def init(hash_table)
      __return_value = LibGLib.hash_table_iter_init((to_unsafe as LibGLib::HashTableIter*), hash_table)
      __return_value
    end

    def next(key, value)
      __return_value = LibGLib.hash_table_iter_next((to_unsafe as LibGLib::HashTableIter*), key && key, value && value)
      __return_value
    end

    def remove
      __return_value = LibGLib.hash_table_iter_remove((to_unsafe as LibGLib::HashTableIter*))
      __return_value
    end

    def replace(value)
      __return_value = LibGLib.hash_table_iter_replace((to_unsafe as LibGLib::HashTableIter*), value)
      __return_value
    end

    def steal
      __return_value = LibGLib.hash_table_iter_steal((to_unsafe as LibGLib::HashTableIter*))
      __return_value
    end

  end
end

