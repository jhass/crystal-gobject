module Gio
  class MenuModel < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::MenuModel*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::MenuModel*)
    end

    def item_attribute_value(item_index, attribute, expected_type)
      __return_value = LibGio.menu_model_get_item_attribute_value(@pointer.as(LibGio::MenuModel*), Int32.new(item_index), attribute.to_unsafe, expected_type ? expected_type.to_unsafe.as(LibGLib::VariantType*) : nil)
      GLib::Variant.new(__return_value)
    end

    def item_link(item_index, link)
      __return_value = LibGio.menu_model_get_item_link(@pointer.as(LibGio::MenuModel*), Int32.new(item_index), link.to_unsafe)
      Gio::MenuModel.new(__return_value)
    end

    def n_items
      __return_value = LibGio.menu_model_get_n_items(@pointer.as(LibGio::MenuModel*))
      __return_value
    end

    def mutable?
      __return_value = LibGio.menu_model_is_mutable(@pointer.as(LibGio::MenuModel*))
      __return_value
    end

    def items_changed(position, removed, added)
      LibGio.menu_model_items_changed(@pointer.as(LibGio::MenuModel*), Int32.new(position), Int32.new(removed), Int32.new(added))
      nil
    end

    def iterate_item_attributes(item_index)
      __return_value = LibGio.menu_model_iterate_item_attributes(@pointer.as(LibGio::MenuModel*), Int32.new(item_index))
      Gio::MenuAttributeIter.new(__return_value)
    end

    def iterate_item_links(item_index)
      __return_value = LibGio.menu_model_iterate_item_links(@pointer.as(LibGio::MenuModel*), Int32.new(item_index))
      Gio::MenuLinkIter.new(__return_value)
    end

    alias ItemsChangedSignal = MenuModel, Int32, Int32, Int32 ->
    def on_items_changed(&__block : ItemsChangedSignal)
      __callback = ->(_arg0 : LibGio::MenuModel*, _arg1 : Int32*, _arg2 : Int32*, _arg3 : Int32*) {
       __return_value = __block.call(MenuModel.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("items-changed", __callback)
    end

  end
end

