require "./container"

module Gtk
  class ToolItemGroup < Container
    def initialize(@gtk_tool_item_group)
    end

    def to_unsafe
      @gtk_tool_item_group.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements ToolShell





    def self.new_internal(label)
      __return_value = LibGtk.tool_item_group_new(label)
      Gtk::Widget.new(__return_value)
    end

    def collapsed
      __return_value = LibGtk.tool_item_group_get_collapsed((to_unsafe as LibGtk::ToolItemGroup*))
      __return_value
    end

    def drop_item(x, y)
      __return_value = LibGtk.tool_item_group_get_drop_item((to_unsafe as LibGtk::ToolItemGroup*), Int32.new(x), Int32.new(y))
      Gtk::ToolItem.new(__return_value)
    end

    def ellipsize
      __return_value = LibGtk.tool_item_group_get_ellipsize((to_unsafe as LibGtk::ToolItemGroup*))
      __return_value
    end

    def header_relief
      __return_value = LibGtk.tool_item_group_get_header_relief((to_unsafe as LibGtk::ToolItemGroup*))
      __return_value
    end

    def item_position(item)
      __return_value = LibGtk.tool_item_group_get_item_position((to_unsafe as LibGtk::ToolItemGroup*), (item.to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def label
      __return_value = LibGtk.tool_item_group_get_label((to_unsafe as LibGtk::ToolItemGroup*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def label_widget
      __return_value = LibGtk.tool_item_group_get_label_widget((to_unsafe as LibGtk::ToolItemGroup*))
      Gtk::Widget.new(__return_value)
    end

    def n_items
      __return_value = LibGtk.tool_item_group_get_n_items((to_unsafe as LibGtk::ToolItemGroup*))
      __return_value
    end

    def nth_item(index)
      __return_value = LibGtk.tool_item_group_get_nth_item((to_unsafe as LibGtk::ToolItemGroup*), UInt32.new(index))
      Gtk::ToolItem.new(__return_value)
    end

    def insert(item, position)
      __return_value = LibGtk.tool_item_group_insert((to_unsafe as LibGtk::ToolItemGroup*), (item.to_unsafe as LibGtk::ToolItem*), Int32.new(position))
      __return_value
    end

    def collapsed=(collapsed)
      __return_value = LibGtk.tool_item_group_set_collapsed((to_unsafe as LibGtk::ToolItemGroup*), collapsed)
      __return_value
    end

    def ellipsize=(ellipsize)
      __return_value = LibGtk.tool_item_group_set_ellipsize((to_unsafe as LibGtk::ToolItemGroup*), ellipsize)
      __return_value
    end

    def header_relief=(style)
      __return_value = LibGtk.tool_item_group_set_header_relief((to_unsafe as LibGtk::ToolItemGroup*), style)
      __return_value
    end

    def set_item_position(item, position)
      __return_value = LibGtk.tool_item_group_set_item_position((to_unsafe as LibGtk::ToolItemGroup*), (item.to_unsafe as LibGtk::ToolItem*), Int32.new(position))
      __return_value
    end

    def label=(label)
      __return_value = LibGtk.tool_item_group_set_label((to_unsafe as LibGtk::ToolItemGroup*), label)
      __return_value
    end

    def label_widget=(label_widget)
      __return_value = LibGtk.tool_item_group_set_label_widget((to_unsafe as LibGtk::ToolItemGroup*), (label_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

  end
end

