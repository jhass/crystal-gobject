module Gtk
  class StockItem
    include GObject::WrappedType

    def initialize(@gtk_stock_item)
    end

    def to_unsafe
      @gtk_stock_item.not_nil!
    end

    def free
      __return_value = LibGtk.stock_item_free((to_unsafe as LibGtk::StockItem*))
      __return_value
    end

  end
end

