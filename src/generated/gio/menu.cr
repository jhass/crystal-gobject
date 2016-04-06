require "./menu_model"

module Gio
  class Menu < MenuModel
    def initialize(@gio_menu)
    end

    def to_unsafe
      @gio_menu.not_nil!
    end

    def self.new_internal
      __return_value = LibGio.menu_new
      Gio::Menu.new(__return_value)
    end

    def append(label, detailed_action)
      __return_value = LibGio.menu_append((to_unsafe as LibGio::Menu*), label && label, detailed_action && detailed_action)
      __return_value
    end

    def append_item(item)
      __return_value = LibGio.menu_append_item((to_unsafe as LibGio::Menu*), (item.to_unsafe as LibGio::MenuItem*))
      __return_value
    end

    def append_section(label, section)
      __return_value = LibGio.menu_append_section((to_unsafe as LibGio::Menu*), label && label, (section.to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def append_submenu(label, submenu)
      __return_value = LibGio.menu_append_submenu((to_unsafe as LibGio::Menu*), label && label, (submenu.to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def freeze
      __return_value = LibGio.menu_freeze((to_unsafe as LibGio::Menu*))
      __return_value
    end

    def insert(position, label, detailed_action)
      __return_value = LibGio.menu_insert((to_unsafe as LibGio::Menu*), Int32.new(position), label && label, detailed_action && detailed_action)
      __return_value
    end

    def insert_item(position, item)
      __return_value = LibGio.menu_insert_item((to_unsafe as LibGio::Menu*), Int32.new(position), (item.to_unsafe as LibGio::MenuItem*))
      __return_value
    end

    def insert_section(position, label, section)
      __return_value = LibGio.menu_insert_section((to_unsafe as LibGio::Menu*), Int32.new(position), label && label, (section.to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def insert_submenu(position, label, submenu)
      __return_value = LibGio.menu_insert_submenu((to_unsafe as LibGio::Menu*), Int32.new(position), label && label, (submenu.to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def prepend(label, detailed_action)
      __return_value = LibGio.menu_prepend((to_unsafe as LibGio::Menu*), label && label, detailed_action && detailed_action)
      __return_value
    end

    def prepend_item(item)
      __return_value = LibGio.menu_prepend_item((to_unsafe as LibGio::Menu*), (item.to_unsafe as LibGio::MenuItem*))
      __return_value
    end

    def prepend_section(label, section)
      __return_value = LibGio.menu_prepend_section((to_unsafe as LibGio::Menu*), label && label, (section.to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def prepend_submenu(label, submenu)
      __return_value = LibGio.menu_prepend_submenu((to_unsafe as LibGio::Menu*), label && label, (submenu.to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def remove(position)
      __return_value = LibGio.menu_remove((to_unsafe as LibGio::Menu*), Int32.new(position))
      __return_value
    end

    def remove_all
      __return_value = LibGio.menu_remove_all((to_unsafe as LibGio::Menu*))
      __return_value
    end

  end
end

