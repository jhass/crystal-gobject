module Gio
  module ListModel
    def item_type
      __return_value = LibGio.list_model_get_item_type(to_unsafe.as(LibGio::ListModel*))
      __return_value
    end

    def n_items
      __return_value = LibGio.list_model_get_n_items(to_unsafe.as(LibGio::ListModel*))
      __return_value
    end

    def item(position)
      __return_value = LibGio.list_model_get_item(to_unsafe.as(LibGio::ListModel*), UInt32.new(position))
      GObject::Object.new(__return_value) if __return_value
    end

    def items_changed(position, removed, added)
      __return_value = LibGio.list_model_items_changed(to_unsafe.as(LibGio::ListModel*), UInt32.new(position), UInt32.new(removed), UInt32.new(added))
      __return_value
    end

    alias ItemsChangedSignal = ListModel, UInt32, UInt32, UInt32 ->
    def on_items_changed(&__block : ItemsChangedSignal)
      __callback = ->(_arg0 : LibGio::ListModel*, _arg1 : LibGio::UInt32*, _arg2 : LibGio::UInt32*, _arg3 : LibGio::UInt32*) {
       __return_value = __block.call(ListModel.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("items-changed", __callback)
    end

  end
end

