require "./bin"

module Gtk
  class MenuItem < Bin
    def initialize @gtk_menu_item
    end

    def to_unsafe
      @gtk_menu_item.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    def accel_path=(__value)
      LibGtk.menu_item_set_accel_path((to_unsafe as LibGtk::MenuItem*), __value)
    end

    def label=(__value)
      LibGtk.menu_item_set_label((to_unsafe as LibGtk::MenuItem*), __value)
    end

    def right_justified=(__value)
      LibGtk.menu_item_set_right_justified((to_unsafe as LibGtk::MenuItem*), Bool.cast(__value))
    end

    def submenu=(__value)
      LibGtk.menu_item_set_submenu((to_unsafe as LibGtk::MenuItem*), __value)
    end

    def use_underline=(__value)
      LibGtk.menu_item_set_use_underline((to_unsafe as LibGtk::MenuItem*), Bool.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.menu_item_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_label(label)
      __return_value = LibGtk.menu_item_new_with_label(label)
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(label)
      __return_value = LibGtk.menu_item_new_with_mnemonic(label)
      Gtk::Widget.new(__return_value)
    end

    def activate
      __return_value = LibGtk.menu_item_activate((to_unsafe as LibGtk::MenuItem*))
      __return_value
    end

    def deselect
      __return_value = LibGtk.menu_item_deselect((to_unsafe as LibGtk::MenuItem*))
      __return_value
    end

    def accel_path
      __return_value = LibGtk.menu_item_get_accel_path((to_unsafe as LibGtk::MenuItem*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def label
      __return_value = LibGtk.menu_item_get_label((to_unsafe as LibGtk::MenuItem*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def reserve_indicator
      __return_value = LibGtk.menu_item_get_reserve_indicator((to_unsafe as LibGtk::MenuItem*))
      __return_value
    end

    def right_justified
      __return_value = LibGtk.menu_item_get_right_justified((to_unsafe as LibGtk::MenuItem*))
      __return_value
    end

    def submenu
      __return_value = LibGtk.menu_item_get_submenu((to_unsafe as LibGtk::MenuItem*))
      Gtk::Widget.new(__return_value)
    end

    def use_underline
      __return_value = LibGtk.menu_item_get_use_underline((to_unsafe as LibGtk::MenuItem*))
      __return_value
    end

    def select
      __return_value = LibGtk.menu_item_select((to_unsafe as LibGtk::MenuItem*))
      __return_value
    end

    def accel_path=(accel_path)
      __return_value = LibGtk.menu_item_set_accel_path((to_unsafe as LibGtk::MenuItem*), accel_path)
      __return_value
    end

    def label=(label)
      __return_value = LibGtk.menu_item_set_label((to_unsafe as LibGtk::MenuItem*), label)
      __return_value
    end

    def reserve_indicator=(reserve)
      __return_value = LibGtk.menu_item_set_reserve_indicator((to_unsafe as LibGtk::MenuItem*), Bool.cast(reserve))
      __return_value
    end

    def right_justified=(right_justified)
      __return_value = LibGtk.menu_item_set_right_justified((to_unsafe as LibGtk::MenuItem*), Bool.cast(right_justified))
      __return_value
    end

    def submenu=(submenu)
      __return_value = LibGtk.menu_item_set_submenu((to_unsafe as LibGtk::MenuItem*), (submenu.to_unsafe as LibGtk::Menu*))
      __return_value
    end

    def use_underline=(setting)
      __return_value = LibGtk.menu_item_set_use_underline((to_unsafe as LibGtk::MenuItem*), Bool.cast(setting))
      __return_value
    end

    def toggle_size_allocate(allocation)
      __return_value = LibGtk.menu_item_toggle_size_allocate((to_unsafe as LibGtk::MenuItem*), Int32.cast(allocation))
      __return_value
    end

    def toggle_size_request(requisition)
      __return_value = LibGtk.menu_item_toggle_size_request((to_unsafe as LibGtk::MenuItem*), Int32.cast(requisition))
      __return_value
    end

  end
end

