require "./container"

module Gtk
  class ToolPalette < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::ToolPalette*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToolPalette*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    # Implements Scrollable
    def icon_size
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icon_size", gvalue)
      gvalue.enum
    end

    def icon_size_set
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "icon_size_set", gvalue)
      gvalue.boolean
    end

    def toolbar_style
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "toolbar_style", gvalue)
      gvalue.enum
    end

    def self.new : self
      __return_value = LibGtk.tool_palette_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.drag_target_group
      __return_value = LibGtk.tool_palette_get_drag_target_group
      Gtk::TargetEntry.new(__return_value)
    end

    def self.drag_target_item
      __return_value = LibGtk.tool_palette_get_drag_target_item
      Gtk::TargetEntry.new(__return_value)
    end

    def add_drag_dest(widget, flags : Gtk::DestDefaults, targets : Gtk::ToolPaletteDragTargets, actions : Gdk::DragAction)
      LibGtk.tool_palette_add_drag_dest(@pointer.as(LibGtk::ToolPalette*), widget.to_unsafe.as(LibGtk::Widget*), flags, targets, actions)
      nil
    end

    def drag_item(selection)
      __return_value = LibGtk.tool_palette_get_drag_item(@pointer.as(LibGtk::ToolPalette*), selection.to_unsafe.as(LibGtk::SelectionData*))
      Gtk::Widget.new(__return_value)
    end

    def drop_group(x, y)
      __return_value = LibGtk.tool_palette_get_drop_group(@pointer.as(LibGtk::ToolPalette*), Int32.new(x), Int32.new(y))
      Gtk::ToolItemGroup.new(__return_value) if __return_value
    end

    def drop_item(x, y)
      __return_value = LibGtk.tool_palette_get_drop_item(@pointer.as(LibGtk::ToolPalette*), Int32.new(x), Int32.new(y))
      Gtk::ToolItem.new(__return_value) if __return_value
    end

    def exclusive(group)
      __return_value = LibGtk.tool_palette_get_exclusive(@pointer.as(LibGtk::ToolPalette*), group.to_unsafe.as(LibGtk::ToolItemGroup*))
      __return_value
    end

    def expand(group)
      __return_value = LibGtk.tool_palette_get_expand(@pointer.as(LibGtk::ToolPalette*), group.to_unsafe.as(LibGtk::ToolItemGroup*))
      __return_value
    end

    def group_position(group)
      __return_value = LibGtk.tool_palette_get_group_position(@pointer.as(LibGtk::ToolPalette*), group.to_unsafe.as(LibGtk::ToolItemGroup*))
      __return_value
    end

    def hadjustment
      __return_value = LibGtk.tool_palette_get_hadjustment(@pointer.as(LibGtk::ToolPalette*))
      Gtk::Adjustment.new(__return_value)
    end

    def icon_size
      __return_value = LibGtk.tool_palette_get_icon_size(@pointer.as(LibGtk::ToolPalette*))
      __return_value
    end

    def style
      __return_value = LibGtk.tool_palette_get_style(@pointer.as(LibGtk::ToolPalette*))
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.tool_palette_get_vadjustment(@pointer.as(LibGtk::ToolPalette*))
      Gtk::Adjustment.new(__return_value)
    end

    def drag_source=(targets : Gtk::ToolPaletteDragTargets)
      LibGtk.tool_palette_set_drag_source(@pointer.as(LibGtk::ToolPalette*), targets)
      nil
    end

    def set_exclusive(group, exclusive)
      LibGtk.tool_palette_set_exclusive(@pointer.as(LibGtk::ToolPalette*), group.to_unsafe.as(LibGtk::ToolItemGroup*), exclusive)
      nil
    end

    def set_expand(group, expand)
      LibGtk.tool_palette_set_expand(@pointer.as(LibGtk::ToolPalette*), group.to_unsafe.as(LibGtk::ToolItemGroup*), expand)
      nil
    end

    def set_group_position(group, position)
      LibGtk.tool_palette_set_group_position(@pointer.as(LibGtk::ToolPalette*), group.to_unsafe.as(LibGtk::ToolItemGroup*), Int32.new(position))
      nil
    end

    def icon_size=(icon_size)
      LibGtk.tool_palette_set_icon_size(@pointer.as(LibGtk::ToolPalette*), Int32.new(icon_size))
      nil
    end

    def style=(style : Gtk::ToolbarStyle)
      LibGtk.tool_palette_set_style(@pointer.as(LibGtk::ToolPalette*), style)
      nil
    end

    def unset_icon_size
      LibGtk.tool_palette_unset_icon_size(@pointer.as(LibGtk::ToolPalette*))
      nil
    end

    def unset_style
      LibGtk.tool_palette_unset_style(@pointer.as(LibGtk::ToolPalette*))
      nil
    end

  end
end

