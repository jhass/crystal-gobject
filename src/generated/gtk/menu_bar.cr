require "./menu_shell"

module Gtk
  class MenuBar < MenuShell
    def initialize(@gtk_menu_bar)
    end

    def to_unsafe
      @gtk_menu_bar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable


    def self.new_internal
      __return_value = LibGtk.menu_bar_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_model(model)
      __return_value = LibGtk.menu_bar_new_from_model((model.to_unsafe as LibGio::MenuModel*))
      Gtk::Widget.new(__return_value)
    end

    def child_pack_direction
      __return_value = LibGtk.menu_bar_get_child_pack_direction((to_unsafe as LibGtk::MenuBar*))
      __return_value
    end

    def pack_direction
      __return_value = LibGtk.menu_bar_get_pack_direction((to_unsafe as LibGtk::MenuBar*))
      __return_value
    end

    def child_pack_direction=(child_pack_dir)
      __return_value = LibGtk.menu_bar_set_child_pack_direction((to_unsafe as LibGtk::MenuBar*), child_pack_dir)
      __return_value
    end

    def pack_direction=(pack_dir)
      __return_value = LibGtk.menu_bar_set_pack_direction((to_unsafe as LibGtk::MenuBar*), pack_dir)
      __return_value
    end

  end
end

