require "./container"

module Gtk
  class MenuShell < Container
    def initialize @gtk_menu_shell
    end

    def to_unsafe
      @gtk_menu_shell.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def take_focus=(__value)
      LibGtk.menu_shell_set_take_focus((to_unsafe as LibGtk::MenuShell*), Bool.cast(__value))
    end

    def activate_item(menu_item, force_deactivate)
      __return_value = LibGtk.menu_shell_activate_item((to_unsafe as LibGtk::MenuShell*), (menu_item.to_unsafe as LibGtk::Widget*), Bool.cast(force_deactivate))
      __return_value
    end

    def append(child)
      __return_value = LibGtk.menu_shell_append((to_unsafe as LibGtk::MenuShell*), (child.to_unsafe as LibGtk::MenuItem*))
      __return_value
    end

    def bind_model(model, action_namespace, with_separators)
      __return_value = LibGtk.menu_shell_bind_model((to_unsafe as LibGtk::MenuShell*), (model.to_unsafe as LibGio::MenuModel*), action_namespace, Bool.cast(with_separators))
      __return_value
    end

    def cancel
      __return_value = LibGtk.menu_shell_cancel((to_unsafe as LibGtk::MenuShell*))
      __return_value
    end

    def deactivate
      __return_value = LibGtk.menu_shell_deactivate((to_unsafe as LibGtk::MenuShell*))
      __return_value
    end

    def deselect
      __return_value = LibGtk.menu_shell_deselect((to_unsafe as LibGtk::MenuShell*))
      __return_value
    end

    def parent_shell
      __return_value = LibGtk.menu_shell_get_parent_shell((to_unsafe as LibGtk::MenuShell*))
      Gtk::Widget.new(__return_value)
    end

    def selected_item
      __return_value = LibGtk.menu_shell_get_selected_item((to_unsafe as LibGtk::MenuShell*))
      Gtk::Widget.new(__return_value)
    end

    def take_focus
      __return_value = LibGtk.menu_shell_get_take_focus((to_unsafe as LibGtk::MenuShell*))
      __return_value
    end

    def insert(child, position)
      __return_value = LibGtk.menu_shell_insert((to_unsafe as LibGtk::MenuShell*), (child.to_unsafe as LibGtk::Widget*), Int32.cast(position))
      __return_value
    end

    def prepend(child)
      __return_value = LibGtk.menu_shell_prepend((to_unsafe as LibGtk::MenuShell*), (child.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def select_first(search_sensitive)
      __return_value = LibGtk.menu_shell_select_first((to_unsafe as LibGtk::MenuShell*), Bool.cast(search_sensitive))
      __return_value
    end

    def select_item(menu_item)
      __return_value = LibGtk.menu_shell_select_item((to_unsafe as LibGtk::MenuShell*), (menu_item.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def take_focus=(take_focus)
      __return_value = LibGtk.menu_shell_set_take_focus((to_unsafe as LibGtk::MenuShell*), Bool.cast(take_focus))
      __return_value
    end

  end
end

