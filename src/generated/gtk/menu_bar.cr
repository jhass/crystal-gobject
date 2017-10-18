require "./menu_shell"

module Gtk
  class MenuBar < MenuShell
    @gtk_menu_bar : LibGtk::MenuBar*?
    def initialize(@gtk_menu_bar : LibGtk::MenuBar*)
    end

    def to_unsafe
      @gtk_menu_bar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def child_pack_direction
      __return_value = LibGtk.menu_bar_get_child_pack_direction(to_unsafe.as(LibGtk::MenuBar*))
      __return_value
    end

    def pack_direction
      __return_value = LibGtk.menu_bar_get_pack_direction(to_unsafe.as(LibGtk::MenuBar*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.menu_bar_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_model(model) : self
      __return_value = LibGtk.menu_bar_new_from_model(model.to_unsafe.as(LibGio::MenuModel*))
      cast Gtk::Widget.new(__return_value)
    end

    def child_pack_direction
      __return_value = LibGtk.menu_bar_get_child_pack_direction(to_unsafe.as(LibGtk::MenuBar*))
      __return_value
    end

    def pack_direction
      __return_value = LibGtk.menu_bar_get_pack_direction(to_unsafe.as(LibGtk::MenuBar*))
      __return_value
    end

    def child_pack_direction=(child_pack_dir : Gtk::PackDirection)
      LibGtk.menu_bar_set_child_pack_direction(to_unsafe.as(LibGtk::MenuBar*), child_pack_dir)
      nil
    end

    def pack_direction=(pack_dir : Gtk::PackDirection)
      LibGtk.menu_bar_set_pack_direction(to_unsafe.as(LibGtk::MenuBar*), pack_dir)
      nil
    end

  end
end

