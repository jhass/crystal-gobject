require "./menu"

module Gtk
  class RecentChooserMenu < Menu
    @gtk_recent_chooser_menu : LibGtk::RecentChooserMenu*?
    def initialize(@gtk_recent_chooser_menu : LibGtk::RecentChooserMenu*)
    end

    def to_unsafe
      @gtk_recent_chooser_menu.not_nil!
    end

    # Implements ImplementorIface
    # Implements Activatable
    # Implements Buildable
    # Implements RecentChooser
    def show_numbers
      __return_value = LibGtk.recent_chooser_menu_get_show_numbers(to_unsafe.as(LibGtk::RecentChooserMenu*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.recent_chooser_menu_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_for_manager(manager) : self
      __return_value = LibGtk.recent_chooser_menu_new_for_manager(manager.to_unsafe.as(LibGtk::RecentManager*))
      cast Gtk::Widget.new(__return_value)
    end

    def show_numbers
      __return_value = LibGtk.recent_chooser_menu_get_show_numbers(to_unsafe.as(LibGtk::RecentChooserMenu*))
      __return_value
    end

    def show_numbers=(show_numbers)
      LibGtk.recent_chooser_menu_set_show_numbers(to_unsafe.as(LibGtk::RecentChooserMenu*), show_numbers)
      nil
    end

  end
end

