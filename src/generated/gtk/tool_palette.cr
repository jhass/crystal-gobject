require "./container"

module Gtk
  class ToolPalette < Container
    def initialize(@gtk_tool_palette)
    end

    def to_unsafe
      @gtk_tool_palette.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    # Implements Scrollable



    def self.new_internal
      __return_value = LibGtk.tool_palette_new
      Gtk::Widget.new(__return_value)
    end

    def self.drag_target_group
      __return_value = LibGtk.tool_palette_get_drag_target_group
      Gtk::TargetEntry.new(__return_value)
    end

    def self.drag_target_item
      __return_value = LibGtk.tool_palette_get_drag_target_item
      Gtk::TargetEntry.new(__return_value)
    end

    def add_drag_dest(widget, flags, targets, actions)
      __return_value = LibGtk.tool_palette_add_drag_dest((to_unsafe as LibGtk::ToolPalette*), (widget.to_unsafe as LibGtk::Widget*), flags, targets, actions)
      __return_value
    end

    def drag_item(selection)
      __return_value = LibGtk.tool_palette_get_drag_item((to_unsafe as LibGtk::ToolPalette*), (selection.to_unsafe as LibGtk::SelectionData*))
      Gtk::Widget.new(__return_value)
    end

    def drop_group(x, y)
      __return_value = LibGtk.tool_palette_get_drop_group((to_unsafe as LibGtk::ToolPalette*), Int32.new(x), Int32.new(y))
      Gtk::ToolItemGroup.new(__return_value)
    end

    def drop_item(x, y)
      __return_value = LibGtk.tool_palette_get_drop_item((to_unsafe as LibGtk::ToolPalette*), Int32.new(x), Int32.new(y))
      Gtk::ToolItem.new(__return_value)
    end

    def exclusive(group)
      __return_value = LibGtk.tool_palette_get_exclusive((to_unsafe as LibGtk::ToolPalette*), (group.to_unsafe as LibGtk::ToolItemGroup*))
      __return_value
    end

    def expand(group)
      __return_value = LibGtk.tool_palette_get_expand((to_unsafe as LibGtk::ToolPalette*), (group.to_unsafe as LibGtk::ToolItemGroup*))
      __return_value
    end

    def group_position(group)
      __return_value = LibGtk.tool_palette_get_group_position((to_unsafe as LibGtk::ToolPalette*), (group.to_unsafe as LibGtk::ToolItemGroup*))
      __return_value
    end

    def hadjustment
      __return_value = LibGtk.tool_palette_get_hadjustment((to_unsafe as LibGtk::ToolPalette*))
      Gtk::Adjustment.new(__return_value)
    end

    def icon_size
      __return_value = LibGtk.tool_palette_get_icon_size((to_unsafe as LibGtk::ToolPalette*))
      __return_value
    end

    def style
      __return_value = LibGtk.tool_palette_get_style((to_unsafe as LibGtk::ToolPalette*))
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.tool_palette_get_vadjustment((to_unsafe as LibGtk::ToolPalette*))
      Gtk::Adjustment.new(__return_value)
    end

    def drag_source=(targets)
      __return_value = LibGtk.tool_palette_set_drag_source((to_unsafe as LibGtk::ToolPalette*), targets)
      __return_value
    end

    def set_exclusive(group, exclusive)
      __return_value = LibGtk.tool_palette_set_exclusive((to_unsafe as LibGtk::ToolPalette*), (group.to_unsafe as LibGtk::ToolItemGroup*), exclusive)
      __return_value
    end

    def set_expand(group, expand)
      __return_value = LibGtk.tool_palette_set_expand((to_unsafe as LibGtk::ToolPalette*), (group.to_unsafe as LibGtk::ToolItemGroup*), expand)
      __return_value
    end

    def set_group_position(group, position)
      __return_value = LibGtk.tool_palette_set_group_position((to_unsafe as LibGtk::ToolPalette*), (group.to_unsafe as LibGtk::ToolItemGroup*), Int32.new(position))
      __return_value
    end

    def icon_size=(icon_size)
      __return_value = LibGtk.tool_palette_set_icon_size((to_unsafe as LibGtk::ToolPalette*), Int32.new(icon_size))
      __return_value
    end

    def style=(style)
      __return_value = LibGtk.tool_palette_set_style((to_unsafe as LibGtk::ToolPalette*), style)
      __return_value
    end

    def unset_icon_size
      __return_value = LibGtk.tool_palette_unset_icon_size((to_unsafe as LibGtk::ToolPalette*))
      __return_value
    end

    def unset_style
      __return_value = LibGtk.tool_palette_unset_style((to_unsafe as LibGtk::ToolPalette*))
      __return_value
    end

  end
end

