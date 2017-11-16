require "./container"

module Gtk
  class ToolItemGroup < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::ToolItemGroup*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToolItemGroup*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements ToolShell
    def collapsed
      __return_value = LibGtk.tool_item_group_get_collapsed(to_unsafe.as(LibGtk::ToolItemGroup*))
      __return_value
    end

    def ellipsize
      __return_value = LibGtk.tool_item_group_get_ellipsize(to_unsafe.as(LibGtk::ToolItemGroup*))
      __return_value
    end

    def header_relief
      __return_value = LibGtk.tool_item_group_get_header_relief(to_unsafe.as(LibGtk::ToolItemGroup*))
      __return_value
    end

    def label
      __return_value = LibGtk.tool_item_group_get_label(to_unsafe.as(LibGtk::ToolItemGroup*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def label_widget
      __return_value = LibGtk.tool_item_group_get_label_widget(to_unsafe.as(LibGtk::ToolItemGroup*))
      Gtk::Widget.new(__return_value)
    end

    def self.new(label) : self
      __return_value = LibGtk.tool_item_group_new(label.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def collapsed
      __return_value = LibGtk.tool_item_group_get_collapsed(@pointer.as(LibGtk::ToolItemGroup*))
      __return_value
    end

    def drop_item(x, y)
      __return_value = LibGtk.tool_item_group_get_drop_item(@pointer.as(LibGtk::ToolItemGroup*), Int32.new(x), Int32.new(y))
      Gtk::ToolItem.new(__return_value)
    end

    def ellipsize
      __return_value = LibGtk.tool_item_group_get_ellipsize(@pointer.as(LibGtk::ToolItemGroup*))
      __return_value
    end

    def header_relief
      __return_value = LibGtk.tool_item_group_get_header_relief(@pointer.as(LibGtk::ToolItemGroup*))
      __return_value
    end

    def item_position(item)
      __return_value = LibGtk.tool_item_group_get_item_position(@pointer.as(LibGtk::ToolItemGroup*), item.to_unsafe.as(LibGtk::ToolItem*))
      __return_value
    end

    def label
      __return_value = LibGtk.tool_item_group_get_label(@pointer.as(LibGtk::ToolItemGroup*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def label_widget
      __return_value = LibGtk.tool_item_group_get_label_widget(@pointer.as(LibGtk::ToolItemGroup*))
      Gtk::Widget.new(__return_value)
    end

    def n_items
      __return_value = LibGtk.tool_item_group_get_n_items(@pointer.as(LibGtk::ToolItemGroup*))
      __return_value
    end

    def nth_item(index)
      __return_value = LibGtk.tool_item_group_get_nth_item(@pointer.as(LibGtk::ToolItemGroup*), UInt32.new(index))
      Gtk::ToolItem.new(__return_value)
    end

    def insert(item, position)
      LibGtk.tool_item_group_insert(@pointer.as(LibGtk::ToolItemGroup*), item.to_unsafe.as(LibGtk::ToolItem*), Int32.new(position))
      nil
    end

    def collapsed=(collapsed)
      LibGtk.tool_item_group_set_collapsed(@pointer.as(LibGtk::ToolItemGroup*), collapsed)
      nil
    end

    def ellipsize=(ellipsize : Pango::EllipsizeMode)
      LibGtk.tool_item_group_set_ellipsize(@pointer.as(LibGtk::ToolItemGroup*), ellipsize)
      nil
    end

    def header_relief=(style : Gtk::ReliefStyle)
      LibGtk.tool_item_group_set_header_relief(@pointer.as(LibGtk::ToolItemGroup*), style)
      nil
    end

    def set_item_position(item, position)
      LibGtk.tool_item_group_set_item_position(@pointer.as(LibGtk::ToolItemGroup*), item.to_unsafe.as(LibGtk::ToolItem*), Int32.new(position))
      nil
    end

    def label=(label)
      LibGtk.tool_item_group_set_label(@pointer.as(LibGtk::ToolItemGroup*), label.to_unsafe)
      nil
    end

    def label_widget=(label_widget)
      LibGtk.tool_item_group_set_label_widget(@pointer.as(LibGtk::ToolItemGroup*), label_widget.to_unsafe.as(LibGtk::Widget*))
      nil
    end

  end
end

