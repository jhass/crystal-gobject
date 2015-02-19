require "./container"

module Gtk
  class Toolbar < Container
    def initialize @gtk_toolbar
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
      __return_value = LibGtk.toolbar_get_drop_index((to_unsafe as LibGtk::Toolbar*), Int32.cast(x), Int32.cast(y))
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
      __return_value = LibGtk.toolbar_get_nth_item((to_unsafe as LibGtk::Toolbar*), Int32.cast(n))
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
      __return_value = LibGtk.toolbar_insert((to_unsafe as LibGtk::Toolbar*), (item.to_unsafe as LibGtk::ToolItem*), Int32.cast(pos))
      __return_value
    end

    def set_drop_highlight_item(tool_item, index)
      __return_value = LibGtk.toolbar_set_drop_highlight_item((to_unsafe as LibGtk::Toolbar*), tool_item && (tool_item.to_unsafe as LibGtk::ToolItem*), Int32.cast(index))
      __return_value
    end

    def icon_size=(icon_size)
      __return_value = LibGtk.toolbar_set_icon_size((to_unsafe as LibGtk::Toolbar*), icon_size)
      __return_value
    end

    def show_arrow=(show_arrow)
      __return_value = LibGtk.toolbar_set_show_arrow((to_unsafe as LibGtk::Toolbar*), Bool.cast(show_arrow))
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

  end
end

