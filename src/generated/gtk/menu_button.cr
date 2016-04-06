require "./toggle_button"

module Gtk
  class MenuButton < ToggleButton
    def initialize(@gtk_menu_button)
    end

    def to_unsafe
      @gtk_menu_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable






    def self.new_internal
      __return_value = LibGtk.menu_button_new
      Gtk::Widget.new(__return_value)
    end

    def align_widget
      __return_value = LibGtk.menu_button_get_align_widget((to_unsafe as LibGtk::MenuButton*))
      Gtk::Widget.new(__return_value)
    end

    def direction
      __return_value = LibGtk.menu_button_get_direction((to_unsafe as LibGtk::MenuButton*))
      __return_value
    end

    def menu_model
      __return_value = LibGtk.menu_button_get_menu_model((to_unsafe as LibGtk::MenuButton*))
      Gio::MenuModel.new(__return_value)
    end

    def popover
      __return_value = LibGtk.menu_button_get_popover((to_unsafe as LibGtk::MenuButton*))
      Gtk::Popover.new(__return_value)
    end

    def popup
      __return_value = LibGtk.menu_button_get_popup((to_unsafe as LibGtk::MenuButton*))
      Gtk::Menu.new(__return_value)
    end

    def use_popover
      __return_value = LibGtk.menu_button_get_use_popover((to_unsafe as LibGtk::MenuButton*))
      __return_value
    end

    def align_widget=(align_widget)
      __return_value = LibGtk.menu_button_set_align_widget((to_unsafe as LibGtk::MenuButton*), align_widget && (align_widget.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def direction=(direction)
      __return_value = LibGtk.menu_button_set_direction((to_unsafe as LibGtk::MenuButton*), direction)
      __return_value
    end

    def menu_model=(menu_model)
      __return_value = LibGtk.menu_button_set_menu_model((to_unsafe as LibGtk::MenuButton*), menu_model && (menu_model.to_unsafe as LibGio::MenuModel*))
      __return_value
    end

    def popover=(popover)
      __return_value = LibGtk.menu_button_set_popover((to_unsafe as LibGtk::MenuButton*), popover && (popover.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def popup=(menu)
      __return_value = LibGtk.menu_button_set_popup((to_unsafe as LibGtk::MenuButton*), menu && (menu.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def use_popover=(use_popover)
      __return_value = LibGtk.menu_button_set_use_popover((to_unsafe as LibGtk::MenuButton*), use_popover)
      __return_value
    end

  end
end

