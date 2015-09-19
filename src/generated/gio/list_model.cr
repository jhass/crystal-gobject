module Gio
  module ListModel
    def item_type
      __return_value = LibGio.list_model_get_item_type((to_unsafe as LibGio::ListModel*))
      __return_value
    end

    def n_items
      __return_value = LibGio.list_model_get_n_items((to_unsafe as LibGio::ListModel*))
      __return_value
    end

    def item(position)
      __return_value = LibGio.list_model_get_item((to_unsafe as LibGio::ListModel*), UInt32.new(position))
      GObject::Object.new(__return_value) if __return_value
    end

    def items_changed(position, removed, added)
      __return_value = LibGio.list_model_items_changed((to_unsafe as LibGio::ListModel*), UInt32.new(position), UInt32.new(removed), UInt32.new(added))
      __return_value
    end

  end
end

