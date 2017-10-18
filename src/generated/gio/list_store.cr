module Gio
  class ListStore < GObject::Object
    @gio_list_store : LibGio::ListStore*?
    def initialize(@gio_list_store : LibGio::ListStore*)
    end

    def to_unsafe
      @gio_list_store.not_nil!
    end

    # Implements ListModel
    def item_type
      __return_value = LibGio.list_store_get_item_type(to_unsafe.as(LibGio::ListStore*))
      __return_value
    end

    def self.new(item_type) : self
      __return_value = LibGio.list_store_new(UInt64.new(item_type))
      cast Gio::ListStore.new(__return_value)
    end

    def append(item)
      LibGio.list_store_append(to_unsafe.as(LibGio::ListStore*), item.to_unsafe.as(LibGObject::Object*))
      nil
    end

    def insert(position, item)
      LibGio.list_store_insert(to_unsafe.as(LibGio::ListStore*), UInt32.new(position), item.to_unsafe.as(LibGObject::Object*))
      nil
    end

    def insert_sorted(item, compare_func, user_data)
      __return_value = LibGio.list_store_insert_sorted(to_unsafe.as(LibGio::ListStore*), item.to_unsafe.as(LibGObject::Object*), compare_func, user_data ? user_data : nil)
      __return_value
    end

    def remove(position)
      LibGio.list_store_remove(to_unsafe.as(LibGio::ListStore*), UInt32.new(position))
      nil
    end

    def remove_all
      LibGio.list_store_remove_all(to_unsafe.as(LibGio::ListStore*))
      nil
    end

    def sort(compare_func, user_data)
      LibGio.list_store_sort(to_unsafe.as(LibGio::ListStore*), compare_func, user_data ? user_data : nil)
      nil
    end

    def splice(position, n_removals, additions, n_additions)
      LibGio.list_store_splice(to_unsafe.as(LibGio::ListStore*), UInt32.new(position), UInt32.new(n_removals), additions, UInt32.new(n_additions))
      nil
    end

  end
end

