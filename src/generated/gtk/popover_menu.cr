require "./popover"

module Gtk
  class PopoverMenu < Popover
    @gtk_popover_menu : LibGtk::PopoverMenu*?
    def initialize(@gtk_popover_menu : LibGtk::PopoverMenu*)
    end

    def to_unsafe
      @gtk_popover_menu.not_nil!.as(Void*)
    end

    # Implements ImplementorIface
    # Implements Buildable

    def self.new : self
      __return_value = LibGtk.popover_menu_new
      cast Gtk::Widget.new(__return_value)
    end

    def open_submenu(name)
      __return_value = LibGtk.popover_menu_open_submenu(to_unsafe.as(LibGtk::PopoverMenu*), name.to_unsafe)
      __return_value
    end

  end
end

