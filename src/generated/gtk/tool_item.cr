require "./bin"

module Gtk
  class ToolItem < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::ToolItem*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ToolItem*)
    end

    # Implements ImplementorIface
    # Implements Activatable
    # Implements Buildable
    def is_important
      __return_value = LibGtk.tool_item_get_is_important(to_unsafe.as(LibGtk::ToolItem*))
      __return_value
    end

    def visible_horizontal
      __return_value = LibGtk.tool_item_get_visible_horizontal(to_unsafe.as(LibGtk::ToolItem*))
      __return_value
    end

    def visible_vertical
      __return_value = LibGtk.tool_item_get_visible_vertical(to_unsafe.as(LibGtk::ToolItem*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.tool_item_new
      cast Gtk::ToolItem.new(__return_value)
    end

    def ellipsize_mode
      __return_value = LibGtk.tool_item_get_ellipsize_mode(@pointer.as(LibGtk::ToolItem*))
      __return_value
    end

    def expand
      __return_value = LibGtk.tool_item_get_expand(@pointer.as(LibGtk::ToolItem*))
      __return_value
    end

    def homogeneous
      __return_value = LibGtk.tool_item_get_homogeneous(@pointer.as(LibGtk::ToolItem*))
      __return_value
    end

    def icon_size
      __return_value = LibGtk.tool_item_get_icon_size(@pointer.as(LibGtk::ToolItem*))
      __return_value
    end

    def is_important
      __return_value = LibGtk.tool_item_get_is_important(@pointer.as(LibGtk::ToolItem*))
      __return_value
    end

    def orientation
      __return_value = LibGtk.tool_item_get_orientation(@pointer.as(LibGtk::ToolItem*))
      __return_value
    end

    def proxy_menu_item(menu_item_id)
      __return_value = LibGtk.tool_item_get_proxy_menu_item(@pointer.as(LibGtk::ToolItem*), menu_item_id.to_unsafe)
      Gtk::Widget.new(__return_value) if __return_value
    end

    def relief_style
      __return_value = LibGtk.tool_item_get_relief_style(@pointer.as(LibGtk::ToolItem*))
      __return_value
    end

    def text_alignment
      __return_value = LibGtk.tool_item_get_text_alignment(@pointer.as(LibGtk::ToolItem*))
      __return_value
    end

    def text_orientation
      __return_value = LibGtk.tool_item_get_text_orientation(@pointer.as(LibGtk::ToolItem*))
      __return_value
    end

    def text_size_group
      __return_value = LibGtk.tool_item_get_text_size_group(@pointer.as(LibGtk::ToolItem*))
      Gtk::SizeGroup.new(__return_value)
    end

    def toolbar_style
      __return_value = LibGtk.tool_item_get_toolbar_style(@pointer.as(LibGtk::ToolItem*))
      __return_value
    end

    def use_drag_window
      __return_value = LibGtk.tool_item_get_use_drag_window(@pointer.as(LibGtk::ToolItem*))
      __return_value
    end

    def visible_horizontal
      __return_value = LibGtk.tool_item_get_visible_horizontal(@pointer.as(LibGtk::ToolItem*))
      __return_value
    end

    def visible_vertical
      __return_value = LibGtk.tool_item_get_visible_vertical(@pointer.as(LibGtk::ToolItem*))
      __return_value
    end

    def rebuild_menu
      LibGtk.tool_item_rebuild_menu(@pointer.as(LibGtk::ToolItem*))
      nil
    end

    def retrieve_proxy_menu_item
      __return_value = LibGtk.tool_item_retrieve_proxy_menu_item(@pointer.as(LibGtk::ToolItem*))
      Gtk::Widget.new(__return_value)
    end

    def expand=(expand)
      LibGtk.tool_item_set_expand(@pointer.as(LibGtk::ToolItem*), expand)
      nil
    end

    def homogeneous=(homogeneous)
      LibGtk.tool_item_set_homogeneous(@pointer.as(LibGtk::ToolItem*), homogeneous)
      nil
    end

    def is_important=(is_important)
      LibGtk.tool_item_set_is_important(@pointer.as(LibGtk::ToolItem*), is_important)
      nil
    end

    def set_proxy_menu_item(menu_item_id, menu_item)
      LibGtk.tool_item_set_proxy_menu_item(@pointer.as(LibGtk::ToolItem*), menu_item_id.to_unsafe, menu_item ? menu_item.to_unsafe.as(LibGtk::Widget*) : nil)
      nil
    end

    def tooltip_markup=(markup)
      LibGtk.tool_item_set_tooltip_markup(@pointer.as(LibGtk::ToolItem*), markup.to_unsafe)
      nil
    end

    def tooltip_text=(text)
      LibGtk.tool_item_set_tooltip_text(@pointer.as(LibGtk::ToolItem*), text.to_unsafe)
      nil
    end

    def use_drag_window=(use_drag_window)
      LibGtk.tool_item_set_use_drag_window(@pointer.as(LibGtk::ToolItem*), use_drag_window)
      nil
    end

    def visible_horizontal=(visible_horizontal)
      LibGtk.tool_item_set_visible_horizontal(@pointer.as(LibGtk::ToolItem*), visible_horizontal)
      nil
    end

    def visible_vertical=(visible_vertical)
      LibGtk.tool_item_set_visible_vertical(@pointer.as(LibGtk::ToolItem*), visible_vertical)
      nil
    end

    def toolbar_reconfigured
      LibGtk.tool_item_toolbar_reconfigured(@pointer.as(LibGtk::ToolItem*))
      nil
    end

    alias CreateMenuProxySignal = ToolItem -> Bool
    def on_create_menu_proxy(&__block : CreateMenuProxySignal)
      __callback = ->(_arg0 : LibGtk::ToolItem*) {
       __return_value = __block.call(ToolItem.new(_arg0))
       __return_value
      }
      connect("create-menu-proxy", __callback)
    end

    alias ToolbarReconfiguredSignal = ToolItem ->
    def on_toolbar_reconfigured(&__block : ToolbarReconfiguredSignal)
      __callback = ->(_arg0 : LibGtk::ToolItem*) {
       __return_value = __block.call(ToolItem.new(_arg0))
       __return_value
      }
      connect("toolbar-reconfigured", __callback)
    end

  end
end

