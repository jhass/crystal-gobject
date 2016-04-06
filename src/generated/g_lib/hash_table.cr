module GLib
  class HashTable
    include GObject::WrappedType

    def initialize(@g_lib_hash_table)
    end

    def to_unsafe
      @g_lib_hash_table.not_nil!
    end

    def self.add(hash_table, key)
      __return_value = LibGLib.hash_table_add(hash_table, key)
      __return_value
    end

    def self.contains(hash_table, key)
      __return_value = LibGLib.hash_table_contains(hash_table, key)
      __return_value
    end

    def self.destroy(hash_table)
      __return_value = LibGLib.hash_table_destroy(hash_table)
      __return_value
    end

    def self.insert(hash_table, key, value)
      __return_value = LibGLib.hash_table_insert(hash_table, key, value)
      __return_value
    end

    def self.lookup_extended(hash_table, lookup_key, orig_key, value)
      __return_value = LibGLib.hash_table_lookup_extended(hash_table, lookup_key, orig_key && orig_key, value && value)
      __return_value
    end

    def self.remove(hash_table, key)
      __return_value = LibGLib.hash_table_remove(hash_table, key)
      __return_value
    end

    def self.remove_all(hash_table)
      __return_value = LibGLib.hash_table_remove_all(hash_table)
      __return_value
    end

    def self.replace(hash_table, key, value)
      __return_value = LibGLib.hash_table_replace(hash_table, key, value)
      __return_value
    end

    def self.size(hash_table)
      __return_value = LibGLib.hash_table_size(hash_table)
      __return_value
    end

    def self.steal(hash_table, key)
      __return_value = LibGLib.hash_table_steal(hash_table, key)
      __return_value
    end

    def self.steal_all(hash_table)
      __return_value = LibGLib.hash_table_steal_all(hash_table)
      __return_value
    end

    def self.unref(hash_table)
      __return_value = LibGLib.hash_table_unref(hash_table)
      __return_value
    end

  end
end

