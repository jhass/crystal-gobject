module Gio
  class MenuModel < GObject::Object
    def initialize(@gio_menu_model)
    end

    def to_unsafe
      @gio_menu_model.not_nil!
    end

    def item_attribute_value(item_index, attribute, expected_type)
      __return_value = LibGio.menu_model_get_item_attribute_value((to_unsafe as LibGio::MenuModel*), Int32.new(item_index), attribute, expected_type && (expected_type.to_unsafe as LibGLib::VariantType*))
      GLib::Variant.new(__return_value)
    end

    def item_link(item_index, link)
      __return_value = LibGio.menu_model_get_item_link((to_unsafe as LibGio::MenuModel*), Int32.new(item_index), link)
      Gio::MenuModel.new(__return_value)
    end

    def n_items
      __return_value = LibGio.menu_model_get_n_items((to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def mutable?
      __return_value = LibGio.menu_model_is_mutable((to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def items_changed(position, removed, added)
      __return_value = LibGio.menu_model_items_changed((to_unsafe as LibGio::MenuModel*), Int32.new(position), Int32.new(removed), Int32.new(added))
      __return_value
    end

    def iterate_item_attributes(item_index)
      __return_value = LibGio.menu_model_iterate_item_attributes((to_unsafe as LibGio::MenuModel*), Int32.new(item_index))
      Gio::MenuAttributeIter.new(__return_value)
    end

    def iterate_item_links(item_index)
      __return_value = LibGio.menu_model_iterate_item_links((to_unsafe as LibGio::MenuModel*), Int32.new(item_index))
      Gio::MenuLinkIter.new(__return_value)
    end

    alias ItemsChangedSignal = MenuModel, Int32, Int32, Int32 -> 
    def on_items_changed(&__block : ItemsChangedSignal)
      __callback = ->(_arg0 : LibGio::MenuModel*, _arg1 : LibGio::Int32*, _arg2 : LibGio::Int32*, _arg3 : LibGio::Int32*) {
       __return_value = __block.call(MenuModel.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("items-changed", __callback)
    end

  end
end

