require "./tool_item"

module Gtk
  class ToolButton < ToolItem
    def initialize @gtk_tool_button
    end

    def to_unsafe
      @gtk_tool_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def icon_name=(__value)
      LibGtk.tool_button_set_icon_name((to_unsafe as LibGtk::ToolButton*), __value)
    end

    def icon_widget=(__value)
      LibGtk.tool_button_set_icon_widget((to_unsafe as LibGtk::ToolButton*), __value)
    end

    def label=(__value)
      LibGtk.tool_button_set_label((to_unsafe as LibGtk::ToolButton*), __value)
    end

    def label_widget=(__value)
      LibGtk.tool_button_set_label_widget((to_unsafe as LibGtk::ToolButton*), __value)
    end

    def stock_id=(__value)
      LibGtk.tool_button_set_stock_id((to_unsafe as LibGtk::ToolButton*), __value)
    end

    def use_underline=(__value)
      LibGtk.tool_button_set_use_underline((to_unsafe as LibGtk::ToolButton*), Bool.cast(__value))
    end

    def self.new_internal(icon_widget, label)
      __return_value = LibGtk.tool_button_new((icon_widget.to_unsafe as LibGtk::Widget*), label)
      Gtk::ToolItem.new(__return_value)
    end

    def self.new_from_stock(stock_id)
      __return_value = LibGtk.tool_button_new_from_stock(stock_id)
      Gtk::ToolItem.new(__return_value)
    end

    def icon_name
      __return_value = LibGtk.tool_button_get_icon_name((to_unsafe as LibGtk::ToolButton*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def icon_widget
      __return_value = LibGtk.tool_button_get_icon_widget((to_unsafe as LibGtk::ToolButton*))
      Gtk::Widget.new(__return_value)
    end

    def label
      __return_value = LibGtk.tool_button_get_label((to_unsafe as LibGtk::ToolButton*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def label_widget
      __return_value = LibGtk.tool_button_get_label_widget((to_unsafe as LibGtk::ToolButton*))
      Gtk::Widget.new(__return_value)
    end

    def stock_id
      __return_value = LibGtk.tool_button_get_stock_id((to_unsafe as LibGtk::ToolButton*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def use_underline
      __return_value = LibGtk.tool_button_get_use_underline((to_unsafe as LibGtk::ToolButton*))
      __return_value
    end

    def icon_name=(icon_name)
      __return_value = LibGtk.tool_button_set_icon_name((to_unsafe as LibGtk::ToolButton*), icon_name)
      __return_value
    end

    def icon_widget=(icon_widget)
      __return_value = LibGtk.tool_button_set_icon_widget((to_unsafe as LibGtk::ToolButton*), (icon_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def label=(label)
      __return_value = LibGtk.tool_button_set_label((to_unsafe as LibGtk::ToolButton*), label)
      __return_value
    end

    def label_widget=(label_widget)
      __return_value = LibGtk.tool_button_set_label_widget((to_unsafe as LibGtk::ToolButton*), (label_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def stock_id=(stock_id)
      __return_value = LibGtk.tool_button_set_stock_id((to_unsafe as LibGtk::ToolButton*), stock_id)
      __return_value
    end

    def use_underline=(use_underline)
      __return_value = LibGtk.tool_button_set_use_underline((to_unsafe as LibGtk::ToolButton*), Bool.cast(use_underline))
      __return_value
    end

  end
end

