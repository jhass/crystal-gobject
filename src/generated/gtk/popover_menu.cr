require "./popover"

module Gtk
  class PopoverMenu < Popover
    def initialize(@gtk_popover_menu)
    end

    def to_unsafe
      @gtk_popover_menu.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable

    def self.new_internal
      __return_value = LibGtk.popover_menu_new
      Gtk::Widget.new(__return_value)
    end

    def open_submenu(name)
      __return_value = LibGtk.popover_menu_open_submenu((to_unsafe as LibGtk::PopoverMenu*), name)
      __return_value
    end

  end
end

