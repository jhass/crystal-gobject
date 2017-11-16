require "./tool_item"

module Gtk
  class SeparatorToolItem < ToolItem
    @pointer : Void*
    def initialize(pointer : LibGtk::SeparatorToolItem*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SeparatorToolItem*)
    end

    # Implements ImplementorIface
    # Implements Activatable
    # Implements Buildable
    def draw
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "draw", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGtk.separator_tool_item_new
      cast Gtk::ToolItem.new(__return_value)
    end

    def draw
      __return_value = LibGtk.separator_tool_item_get_draw(@pointer.as(LibGtk::SeparatorToolItem*))
      __return_value
    end

    def draw=(draw)
      LibGtk.separator_tool_item_set_draw(@pointer.as(LibGtk::SeparatorToolItem*), draw)
      nil
    end

  end
end

