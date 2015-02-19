require "./tool_item"

module Gtk
  class SeparatorToolItem < ToolItem
    def initialize @gtk_separator_tool_item
    end

    def to_unsafe
      @gtk_separator_tool_item.not_nil!
    end

    # Implements ImplementorIface
    # Implements Activatable
    # Implements Buildable
    def draw=(__value)
      LibGtk.separator_tool_item_set_draw((to_unsafe as LibGtk::SeparatorToolItem*), Bool.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.separator_tool_item_new
      Gtk::ToolItem.new(__return_value)
    end

    def draw
      __return_value = LibGtk.separator_tool_item_get_draw((to_unsafe as LibGtk::SeparatorToolItem*))
      __return_value
    end

    def draw=(draw)
      __return_value = LibGtk.separator_tool_item_set_draw((to_unsafe as LibGtk::SeparatorToolItem*), Bool.cast(draw))
      __return_value
    end

  end
end

