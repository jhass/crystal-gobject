require "./bin"

module Gtk
  class ToolItem < Bin
    def initialize(@gtk_tool_item)
    end

    def to_unsafe
      @gtk_tool_item.not_nil!
    end

    # Implements ImplementorIface
    # Implements Activatable
    # Implements Buildable



    def self.new_internal
      __return_value = LibGtk.tool_item_new
      Gtk::ToolItem.new(__return_value)
    end

    def ellipsize_mode
      __return_value = LibGtk.tool_item_get_ellipsize_mode((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def expand
      __return_value = LibGtk.tool_item_get_expand((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def homogeneous
      __return_value = LibGtk.tool_item_get_homogeneous((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def icon_size
      __return_value = LibGtk.tool_item_get_icon_size((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def is_important
      __return_value = LibGtk.tool_item_get_is_important((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def orientation
      __return_value = LibGtk.tool_item_get_orientation((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def proxy_menu_item(menu_item_id)
      __return_value = LibGtk.tool_item_get_proxy_menu_item((to_unsafe as LibGtk::ToolItem*), menu_item_id)
      Gtk::Widget.new(__return_value)
    end

    def relief_style
      __return_value = LibGtk.tool_item_get_relief_style((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def text_alignment
      __return_value = LibGtk.tool_item_get_text_alignment((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def text_orientation
      __return_value = LibGtk.tool_item_get_text_orientation((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def text_size_group
      __return_value = LibGtk.tool_item_get_text_size_group((to_unsafe as LibGtk::ToolItem*))
      Gtk::SizeGroup.new(__return_value)
    end

    def toolbar_style
      __return_value = LibGtk.tool_item_get_toolbar_style((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def use_drag_window
      __return_value = LibGtk.tool_item_get_use_drag_window((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def visible_horizontal
      __return_value = LibGtk.tool_item_get_visible_horizontal((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def visible_vertical
      __return_value = LibGtk.tool_item_get_visible_vertical((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def rebuild_menu
      __return_value = LibGtk.tool_item_rebuild_menu((to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def retrieve_proxy_menu_item
      __return_value = LibGtk.tool_item_retrieve_proxy_menu_item((to_unsafe as LibGtk::ToolItem*))
      Gtk::Widget.new(__return_value)
    end

    def expand=(expand)
      __return_value = LibGtk.tool_item_set_expand((to_unsafe as LibGtk::ToolItem*), expand)
      __return_value
    end

    def homogeneous=(homogeneous)
      __return_value = LibGtk.tool_item_set_homogeneous((to_unsafe as LibGtk::ToolItem*), homogeneous)
      __return_value
    end

    def is_important=(is_important)
      __return_value = LibGtk.tool_item_set_is_important((to_unsafe as LibGtk::ToolItem*), is_important)
      __return_value
    end

    def set_proxy_menu_item(menu_item_id, menu_item)
      __return_value = LibGtk.tool_item_set_proxy_menu_item((to_unsafe as LibGtk::ToolItem*), menu_item_id, (menu_item.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def tooltip_markup=(markup)
      __return_value = LibGtk.tool_item_set_tooltip_markup((to_unsafe as LibGtk::ToolItem*), markup)
      __return_value
    end

    def tooltip_text=(text)
      __return_value = LibGtk.tool_item_set_tooltip_text((to_unsafe as LibGtk::ToolItem*), text)
      __return_value
    end

    def use_drag_window=(use_drag_window)
      __return_value = LibGtk.tool_item_set_use_drag_window((to_unsafe as LibGtk::ToolItem*), use_drag_window)
      __return_value
    end

    def visible_horizontal=(visible_horizontal)
      __return_value = LibGtk.tool_item_set_visible_horizontal((to_unsafe as LibGtk::ToolItem*), visible_horizontal)
      __return_value
    end

    def visible_vertical=(visible_vertical)
      __return_value = LibGtk.tool_item_set_visible_vertical((to_unsafe as LibGtk::ToolItem*), visible_vertical)
      __return_value
    end

    def toolbar_reconfigured
      __return_value = LibGtk.tool_item_toolbar_reconfigured((to_unsafe as LibGtk::ToolItem*))
      __return_value
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

