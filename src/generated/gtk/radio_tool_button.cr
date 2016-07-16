require "./toggle_tool_button"

module Gtk
  class RadioToolButton < ToggleToolButton
    @gtk_radio_tool_button : LibGtk::RadioToolButton*?
    def initialize(@gtk_radio_tool_button : LibGtk::RadioToolButton*)
    end

    def to_unsafe
      @gtk_radio_tool_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable

    def self.new(group) : self
      __return_value = LibGtk.radio_tool_button_new(group && group)
      cast Gtk::ToolItem.new(__return_value)
    end

    def self.new_from_stock(group, stock_id) : self
      __return_value = LibGtk.radio_tool_button_new_from_stock(group && group, stock_id.to_unsafe)
      cast Gtk::ToolItem.new(__return_value)
    end

    def self.new_from_widget(group) : self
      __return_value = LibGtk.radio_tool_button_new_from_widget(group && group.to_unsafe.as(LibGtk::RadioToolButton*))
      cast Gtk::ToolItem.new(__return_value)
    end

    def self.new_with_stock_from_widget(group, stock_id) : self
      __return_value = LibGtk.radio_tool_button_new_with_stock_from_widget(group && group.to_unsafe.as(LibGtk::RadioToolButton*), stock_id.to_unsafe)
      cast Gtk::ToolItem.new(__return_value)
    end

    def group
      __return_value = LibGtk.radio_tool_button_get_group(to_unsafe.as(LibGtk::RadioToolButton*))
      __return_value
    end

    def group=(group)
      __return_value = LibGtk.radio_tool_button_set_group(to_unsafe.as(LibGtk::RadioToolButton*), group && group)
      __return_value
    end

  end
end

