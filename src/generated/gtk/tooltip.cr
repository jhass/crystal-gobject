module Gtk
  class Tooltip < GObject::Object
    def initialize(@gtk_tooltip)
    end

    def to_unsafe
      @gtk_tooltip.not_nil!
    end

    def self.trigger_tooltip_query(display)
      __return_value = LibGtk.tooltip_trigger_tooltip_query((display.to_unsafe as LibGdk::Display*))
      __return_value
    end

    def custom=(custom_widget)
      __return_value = LibGtk.tooltip_set_custom((to_unsafe as LibGtk::Tooltip*), custom_widget && (custom_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def icon=(pixbuf)
      __return_value = LibGtk.tooltip_set_icon((to_unsafe as LibGtk::Tooltip*), pixbuf && (pixbuf.to_unsafe as LibGdkPixbuf::Pixbuf*))
      __return_value
    end

    def set_icon_from_gicon(gicon, size)
      __return_value = LibGtk.tooltip_set_icon_from_gicon((to_unsafe as LibGtk::Tooltip*), gicon && (gicon.to_unsafe as LibGio::Icon*), Int32.new(size))
      __return_value
    end

    def set_icon_from_icon_name(icon_name, size)
      __return_value = LibGtk.tooltip_set_icon_from_icon_name((to_unsafe as LibGtk::Tooltip*), icon_name && icon_name, Int32.new(size))
      __return_value
    end

    def set_icon_from_stock(stock_id, size)
      __return_value = LibGtk.tooltip_set_icon_from_stock((to_unsafe as LibGtk::Tooltip*), stock_id && stock_id, Int32.new(size))
      __return_value
    end

    def markup=(markup)
      __return_value = LibGtk.tooltip_set_markup((to_unsafe as LibGtk::Tooltip*), markup && markup)
      __return_value
    end

    def text=(text)
      __return_value = LibGtk.tooltip_set_text((to_unsafe as LibGtk::Tooltip*), text && text)
      __return_value
    end

    def tip_area=(rect)
      __return_value = LibGtk.tooltip_set_tip_area((to_unsafe as LibGtk::Tooltip*), (rect.to_unsafe as LibGdk::Rectangle*))
      __return_value
    end

  end
end

