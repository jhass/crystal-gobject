module Gtk
  class Tooltip < GObject::Object
    @gtk_tooltip : LibGtk::Tooltip*?
    def initialize(@gtk_tooltip : LibGtk::Tooltip*)
    end

    def to_unsafe
      @gtk_tooltip.not_nil!
    end

    def self.trigger_tooltip_query(display)
      LibGtk.tooltip_trigger_tooltip_query(display.to_unsafe.as(LibGdk::Display*))
      nil
    end

    def custom=(custom_widget)
      LibGtk.tooltip_set_custom(to_unsafe.as(LibGtk::Tooltip*), custom_widget ? custom_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def icon=(pixbuf)
      LibGtk.tooltip_set_icon(to_unsafe.as(LibGtk::Tooltip*), pixbuf ? pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*) : nil)
      nil
    end

    def set_icon_from_gicon(gicon, size)
      LibGtk.tooltip_set_icon_from_gicon(to_unsafe.as(LibGtk::Tooltip*), gicon ? gicon.to_unsafe.as(LibGio::Icon*) : nil, Int32.new(size))
      nil
    end

    def set_icon_from_icon_name(icon_name, size)
      LibGtk.tooltip_set_icon_from_icon_name(to_unsafe.as(LibGtk::Tooltip*), icon_name ? icon_name.to_unsafe : nil, Int32.new(size))
      nil
    end

    def set_icon_from_stock(stock_id, size)
      LibGtk.tooltip_set_icon_from_stock(to_unsafe.as(LibGtk::Tooltip*), stock_id ? stock_id.to_unsafe : nil, Int32.new(size))
      nil
    end

    def markup=(markup)
      LibGtk.tooltip_set_markup(to_unsafe.as(LibGtk::Tooltip*), markup ? markup.to_unsafe : nil)
      nil
    end

    def text=(text)
      LibGtk.tooltip_set_text(to_unsafe.as(LibGtk::Tooltip*), text ? text.to_unsafe : nil)
      nil
    end

    def tip_area=(rect)
      LibGtk.tooltip_set_tip_area(to_unsafe.as(LibGtk::Tooltip*), rect.to_unsafe.as(LibGdk::Rectangle*))
      nil
    end

  end
end

