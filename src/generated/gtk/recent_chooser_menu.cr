require "./menu"

module Gtk
  class RecentChooserMenu < Menu
    @pointer : Void*
    def initialize(pointer : LibGtk::RecentChooserMenu*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::RecentChooserMenu*)
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
      __return_value = LibGtk.recent_chooser_menu_get_show_numbers(@pointer.as(LibGtk::RecentChooserMenu*))
      __return_value
    end

    def show_numbers=(show_numbers)
      LibGtk.recent_chooser_menu_set_show_numbers(@pointer.as(LibGtk::RecentChooserMenu*), show_numbers)
      nil
    end

  end
end

