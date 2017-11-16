module Gtk
  class Tooltip < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::Tooltip*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Tooltip*)
    end

    def self.trigger_tooltip_query(display)
      LibGtk.tooltip_trigger_tooltip_query(display.to_unsafe.as(LibGdk::Display*))
      nil
    end

    def custom=(custom_widget)
      LibGtk.tooltip_set_custom(@pointer.as(LibGtk::Tooltip*), custom_widget ? custom_widget.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def icon=(pixbuf)
      LibGtk.tooltip_set_icon(@pointer.as(LibGtk::Tooltip*), pixbuf ? pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*) : nil)
      nil
    end

    def set_icon_from_gicon(gicon, size)
      LibGtk.tooltip_set_icon_from_gicon(@pointer.as(LibGtk::Tooltip*), gicon ? gicon.to_unsafe.as(LibGio::Icon*) : nil, Int32.new(size))
      nil
    end

    def set_icon_from_icon_name(icon_name, size)
      LibGtk.tooltip_set_icon_from_icon_name(@pointer.as(LibGtk::Tooltip*), icon_name ? icon_name.to_unsafe : nil, Int32.new(size))
      nil
    end

    def set_icon_from_stock(stock_id, size)
      LibGtk.tooltip_set_icon_from_stock(@pointer.as(LibGtk::Tooltip*), stock_id ? stock_id.to_unsafe : nil, Int32.new(size))
      nil
    end

    def markup=(markup)
      LibGtk.tooltip_set_markup(@pointer.as(LibGtk::Tooltip*), markup ? markup.to_unsafe : nil)
      nil
    end

    def text=(text)
      LibGtk.tooltip_set_text(@pointer.as(LibGtk::Tooltip*), text ? text.to_unsafe : nil)
      nil
    end

    def tip_area=(rect)
      LibGtk.tooltip_set_tip_area(@pointer.as(LibGtk::Tooltip*), rect.to_unsafe.as(LibGdk::Rectangle*))
      nil
    end

  end
end

