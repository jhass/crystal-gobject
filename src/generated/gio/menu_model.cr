module Gio
  class MenuModel < GObject::Object
    def initialize @gio_menu_model
    end

    def to_unsafe
      @gio_menu_model.not_nil!
    end

    def item_attribute_value(item_index, attribute, expected_type)
      __return_value = LibGio.menu_model_get_item_attribute_value((to_unsafe as LibGio::MenuModel*), Int32.cast(item_index), attribute, expected_type && (expected_type.to_unsafe as LibGLib::VariantType*))
      GLib::Variant.new(__return_value)
    end

    def item_link(item_index, link)
      __return_value = LibGio.menu_model_get_item_link((to_unsafe as LibGio::MenuModel*), Int32.cast(item_index), link)
      Gio::MenuModel.new(__return_value)
    end

    def n_items
      __return_value = LibGio.menu_model_get_n_items((to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def is_mutable
      __return_value = LibGio.menu_model_is_mutable((to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def items_changed(position, removed, added)
      __return_value = LibGio.menu_model_items_changed((to_unsafe as LibGio::MenuModel*), Int32.cast(position), Int32.cast(removed), Int32.cast(added))
      __return_value
    end

    def iterate_item_attributes(item_index)
      __return_value = LibGio.menu_model_iterate_item_attributes((to_unsafe as LibGio::MenuModel*), Int32.cast(item_index))
      Gio::MenuAttributeIter.new(__return_value)
    end

    def iterate_item_links(item_index)
      __return_value = LibGio.menu_model_iterate_item_links((to_unsafe as LibGio::MenuModel*), Int32.cast(item_index))
      Gio::MenuLinkIter.new(__return_value)
    end

  end
end

