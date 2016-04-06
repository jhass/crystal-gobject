require "./menu"

module Gtk
  class RecentChooserMenu < Menu
    def initialize(@gtk_recent_chooser_menu)
    end

    def to_unsafe
      @gtk_recent_chooser_menu.not_nil!
    end

    # Implements ImplementorIface
    # Implements Activatable
    # Implements Buildable
    # Implements RecentChooser

    def self.new_internal
      __return_value = LibGtk.recent_chooser_menu_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_for_manager(manager)
      __return_value = LibGtk.recent_chooser_menu_new_for_manager((manager.to_unsafe as LibGtk::RecentManager*))
      Gtk::Widget.new(__return_value)
    end

    def show_numbers
      __return_value = LibGtk.recent_chooser_menu_get_show_numbers((to_unsafe as LibGtk::RecentChooserMenu*))
      __return_value
    end

    def show_numbers=(show_numbers)
      __return_value = LibGtk.recent_chooser_menu_set_show_numbers((to_unsafe as LibGtk::RecentChooserMenu*), show_numbers)
      __return_value
    end

  end
end

