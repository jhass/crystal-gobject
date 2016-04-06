require "./container"

module Gtk
  class Toolbar < Container
    def initialize(@gtk_toolbar)
    end

    def to_unsafe
      @gtk_toolbar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Orientable
    # Implements ToolShell




    def self.new_internal
      __return_value = LibGtk.toolbar_new
      Gtk::Widget.new(__return_value)
    end

    def drop_index(x, y)
      __return_value = LibGtk.toolbar_get_drop_index((to_unsafe as LibGtk::Toolbar*), Int32.new(x), Int32.new(y))
      __return_value
    end

    def icon_size
      __return_value = LibGtk.toolbar_get_icon_size((to_unsafe as LibGtk::Toolbar*))
      __return_value
    end

    def item_index(item)
      __return_value = LibGtk.toolbar_get_item_index((to_unsafe as LibGtk::Toolbar*), (item.to_unsafe as LibGtk::ToolItem*))
      __return_value
    end

    def n_items
      __return_value = LibGtk.toolbar_get_n_items((to_unsafe as LibGtk::Toolbar*))
      __return_value
    end

    def nth_item(n)
      __return_value = LibGtk.toolbar_get_nth_item((to_unsafe as LibGtk::Toolbar*), Int32.new(n))
      Gtk::ToolItem.new(__return_value)
    end

    def relief_style
      __return_value = LibGtk.toolbar_get_relief_style((to_unsafe as LibGtk::Toolbar*))
      __return_value
    end

    def show_arrow
      __return_value = LibGtk.toolbar_get_show_arrow((to_unsafe as LibGtk::Toolbar*))
      __return_value
    end

    def style
      __return_value = LibGtk.toolbar_get_style((to_unsafe as LibGtk::Toolbar*))
      __return_value
    end

    def insert(item, pos)
      __return_value = LibGtk.toolbar_insert((to_unsafe as LibGtk::Toolbar*), (item.to_unsafe as LibGtk::ToolItem*), Int32.new(pos))
      __return_value
    end

    def set_drop_highlight_item(tool_item, index)
      __return_value = LibGtk.toolbar_set_drop_highlight_item((to_unsafe as LibGtk::Toolbar*), tool_item && (tool_item.to_unsafe as LibGtk::ToolItem*), Int32.new(index))
      __return_value
    end

    def icon_size=(icon_size)
      __return_value = LibGtk.toolbar_set_icon_size((to_unsafe as LibGtk::Toolbar*), icon_size)
      __return_value
    end

    def show_arrow=(show_arrow)
      __return_value = LibGtk.toolbar_set_show_arrow((to_unsafe as LibGtk::Toolbar*), show_arrow)
      __return_value
    end

    def style=(style)
      __return_value = LibGtk.toolbar_set_style((to_unsafe as LibGtk::Toolbar*), style)
      __return_value
    end

    def unset_icon_size
      __return_value = LibGtk.toolbar_unset_icon_size((to_unsafe as LibGtk::Toolbar*))
      __return_value
    end

    def unset_style
      __return_value = LibGtk.toolbar_unset_style((to_unsafe as LibGtk::Toolbar*))
      __return_value
    end

    alias FocusHomeOrEndSignal = Toolbar, Bool -> Bool
    def on_focus_home_or_end(&__block : FocusHomeOrEndSignal)
      __callback = ->(_arg0 : LibGtk::Toolbar*, _arg1 : LibGtk::Bool*) {
       __return_value = __block.call(Toolbar.new(_arg0), _arg1)
       __return_value
      }
      connect("focus-home-or-end", __callback)
    end

    alias OrientationChangedSignal = Toolbar, Gtk::Orientation -> 
    def on_orientation_changed(&__block : OrientationChangedSignal)
      __callback = ->(_arg0 : LibGtk::Toolbar*, _arg1 : LibGtk::LibGtk::Orientation*) {
       __return_value = __block.call(Toolbar.new(_arg0), _arg1)
       __return_value
      }
      connect("orientation-changed", __callback)
    end

    alias PopupContextMenuSignal = Toolbar, Int32, Int32, Int32 -> Bool
    def on_popup_context_menu(&__block : PopupContextMenuSignal)
      __callback = ->(_arg0 : LibGtk::Toolbar*, _arg1 : LibGtk::Int32*, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::Int32*) {
       __return_value = __block.call(Toolbar.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("popup-context-menu", __callback)
    end

    alias StyleChangedSignal = Toolbar, Gtk::ToolbarStyle -> 
    def on_style_changed(&__block : StyleChangedSignal)
      __callback = ->(_arg0 : LibGtk::Toolbar*, _arg1 : LibGtk::LibGtk::ToolbarStyle*) {
       __return_value = __block.call(Toolbar.new(_arg0), _arg1)
       __return_value
      }
      connect("style-changed", __callback)
    end

  end
end

