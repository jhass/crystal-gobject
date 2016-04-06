module Gio
  class ListStore < GObject::Object
    def initialize(@gio_list_store)
    end

    def to_unsafe
      @gio_list_store.not_nil!
    end

    # Implements ListModel

    def self.new_internal(item_type)
      __return_value = LibGio.list_store_new(UInt64.new(item_type))
      Gio::ListStore.new(__return_value)
    end

    def append(item)
      __return_value = LibGio.list_store_append((to_unsafe as LibGio::ListStore*), (item.to_unsafe as LibGObject::Object*))
      __return_value
    end

    def insert(position, item)
      __return_value = LibGio.list_store_insert((to_unsafe as LibGio::ListStore*), UInt32.new(position), (item.to_unsafe as LibGObject::Object*))
      __return_value
    end

    def insert_sorted(item, compare_func : LibGLib::CompareDataFunc, user_data)
      __return_value = LibGio.list_store_insert_sorted((to_unsafe as LibGio::ListStore*), (item.to_unsafe as LibGObject::Object*), compare_func, user_data)
      __return_value
    end

    def remove(position)
      __return_value = LibGio.list_store_remove((to_unsafe as LibGio::ListStore*), UInt32.new(position))
      __return_value
    end

    def remove_all
      __return_value = LibGio.list_store_remove_all((to_unsafe as LibGio::ListStore*))
      __return_value
    end

    def sort(compare_func : LibGLib::CompareDataFunc, user_data)
      __return_value = LibGio.list_store_sort((to_unsafe as LibGio::ListStore*), compare_func, user_data)
      __return_value
    end

    def splice(position, n_removals, additions, n_additions)
      __return_value = LibGio.list_store_splice((to_unsafe as LibGio::ListStore*), UInt32.new(position), UInt32.new(n_removals), additions, UInt32.new(n_additions))
      __return_value
    end

  end
end

