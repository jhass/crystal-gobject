module GLib
  class HashTable
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::HashTable*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::HashTable*)
    end

    def self.add(hash_table, key)
      __return_value = LibGLib.hash_table_add(hash_table, key ? key : nil)
      __return_value
    end

    def self.contains(hash_table, key)
      __return_value = LibGLib.hash_table_contains(hash_table, key ? key : nil)
      __return_value
    end

    def self.destroy(hash_table)
      LibGLib.hash_table_destroy(hash_table)
      nil
    end

    def self.insert(hash_table, key, value)
      __return_value = LibGLib.hash_table_insert(hash_table, key ? key : nil, value ? value : nil)
      __return_value
    end

    def self.lookup(hash_table, key)
      LibGLib.hash_table_lookup(hash_table, key ? key : nil)
      nil
    end

    def self.lookup_extended(hash_table, lookup_key, orig_key, value)
      __return_value = LibGLib.hash_table_lookup_extended(hash_table, lookup_key ? lookup_key : nil, orig_key, value)
      __return_value
    end

    def self.remove(hash_table, key)
      __return_value = LibGLib.hash_table_remove(hash_table, key ? key : nil)
      __return_value
    end

    def self.remove_all(hash_table)
      LibGLib.hash_table_remove_all(hash_table)
      nil
    end

    def self.replace(hash_table, key, value)
      __return_value = LibGLib.hash_table_replace(hash_table, key ? key : nil, value ? value : nil)
      __return_value
    end

    def self.size(hash_table)
      __return_value = LibGLib.hash_table_size(hash_table)
      __return_value
    end

    def self.steal(hash_table, key)
      __return_value = LibGLib.hash_table_steal(hash_table, key ? key : nil)
      __return_value
    end

    def self.steal_all(hash_table)
      LibGLib.hash_table_steal_all(hash_table)
      nil
    end

    def self.steal_extended(hash_table, lookup_key, stolen_key, stolen_value)
      __return_value = LibGLib.hash_table_steal_extended(hash_table, lookup_key ? lookup_key : nil, stolen_key, stolen_value)
      __return_value
    end

    def self.unref(hash_table)
      LibGLib.hash_table_unref(hash_table)
      nil
    end

  end
end

