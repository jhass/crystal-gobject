require "./tool_button"

module Gtk
  class MenuToolButton < ToolButton
    def initialize(@gtk_menu_tool_button)
    end

    def to_unsafe
      @gtk_menu_tool_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable

    def self.new_internal(icon_widget, label)
      __return_value = LibGtk.menu_tool_button_new(icon_widget && (icon_widget.to_unsafe as LibGtk::Widget*), label && label)
      Gtk::ToolItem.new(__return_value)
    end

    def self.new_from_stock(stock_id)
      __return_value = LibGtk.menu_tool_button_new_from_stock(stock_id)
      Gtk::ToolItem.new(__return_value)
    end

    def menu
      __return_value = LibGtk.menu_tool_button_get_menu((to_unsafe as LibGtk::MenuToolButton*))
      Gtk::Widget.new(__return_value)
    end

    def arrow_tooltip_markup=(markup)
      __return_value = LibGtk.menu_tool_button_set_arrow_tooltip_markup((to_unsafe as LibGtk::MenuToolButton*), markup)
      __return_value
    end

    def arrow_tooltip_text=(text)
      __return_value = LibGtk.menu_tool_button_set_arrow_tooltip_text((to_unsafe as LibGtk::MenuToolButton*), text)
      __return_value
    end

    def menu=(menu)
      __return_value = LibGtk.menu_tool_button_set_menu((to_unsafe as LibGtk::MenuToolButton*), (menu.to_unsafe as LibGtk::Widget*))
      __return_value
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

