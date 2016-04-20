module Gtk
  class StockItem
    include GObject::WrappedType

    @gtk_stock_item : LibGtk::StockItem*?
    def initialize(@gtk_stock_item : LibGtk::StockItem*)
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

