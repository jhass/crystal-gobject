require "./tool_button"

module Gtk
  class MenuToolButton < ToolButton
    @pointer : Void*
    def initialize(pointer : LibGtk::MenuToolButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MenuToolButton*)
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def menu
      __return_value = LibGtk.menu_tool_button_get_menu(to_unsafe.as(LibGtk::MenuToolButton*))
      Gtk::Menu.new(__return_value)
    end

    def self.new(icon_widget, label) : self
      __return_value = LibGtk.menu_tool_button_new(icon_widget ? icon_widget.to_unsafe.as(LibGtk::Widget*) : nil, label ? label.to_unsafe : nil)
      cast Gtk::ToolItem.new(__return_value)
    end

    def self.new_from_stock(stock_id) : self
      __return_value = LibGtk.menu_tool_button_new_from_stock(stock_id.to_unsafe)
      cast Gtk::ToolItem.new(__return_value)
    end

    def menu
      __return_value = LibGtk.menu_tool_button_get_menu(@pointer.as(LibGtk::MenuToolButton*))
      Gtk::Widget.new(__return_value)
    end

    def arrow_tooltip_markup=(markup)
      LibGtk.menu_tool_button_set_arrow_tooltip_markup(@pointer.as(LibGtk::MenuToolButton*), markup.to_unsafe)
      nil
    end

    def arrow_tooltip_text=(text)
      LibGtk.menu_tool_button_set_arrow_tooltip_text(@pointer.as(LibGtk::MenuToolButton*), text.to_unsafe)
      nil
    end

    def menu=(menu)
      LibGtk.menu_tool_button_set_menu(@pointer.as(LibGtk::MenuToolButton*), menu.to_unsafe.as(LibGtk::Widget*))
      nil
    end

    alias ShowMenuSignal = MenuToolButton ->
    def on_show_menu(&__block : ShowMenuSignal)
      __callback = ->(_arg0 : LibGtk::MenuToolButton*) {
       __return_value = __block.call(MenuToolButton.new(_arg0))
       __return_value
      }
      connect("show-menu", __callback)
    end

  end
end

