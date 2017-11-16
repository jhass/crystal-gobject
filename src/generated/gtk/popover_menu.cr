require "./popover"

module Gtk
  class PopoverMenu < Popover
    @pointer : Void*
    def initialize(pointer : LibGtk::PopoverMenu*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::PopoverMenu*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def visible_submenu
      __return_value = LibGtk.popover_menu_get_visible_submenu(to_unsafe.as(LibGtk::PopoverMenu*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new : self
      __return_value = LibGtk.popover_menu_new
      cast Gtk::Widget.new(__return_value)
    end

    def open_submenu(name)
      LibGtk.popover_menu_open_submenu(@pointer.as(LibGtk::PopoverMenu*), name.to_unsafe)
      nil
    end

  end
end

