require "./scrolled_window"

module Gtk
  class PlacesSidebar < ScrolledWindow
    def initialize @gtk_places_sidebar
    end

    def to_unsafe
      @gtk_places_sidebar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable






    def self.new_internal
      __return_value = LibGtk.places_sidebar_new
      Gtk::Widget.new(__return_value)
    end

    def add_shortcut(location)
      __return_value = LibGtk.places_sidebar_add_shortcut((to_unsafe as LibGtk::PlacesSidebar*), (location.to_unsafe as LibGio::File*))
      __return_value
    end

    def local_only
      __return_value = LibGtk.places_sidebar_get_local_only((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def location
      __return_value = LibGtk.places_sidebar_get_location((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def nth_bookmark(n)
      __return_value = LibGtk.places_sidebar_get_nth_bookmark((to_unsafe as LibGtk::PlacesSidebar*), Int32.new(n))
      __return_value
    end

    def open_flags
      __return_value = LibGtk.places_sidebar_get_open_flags((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_connect_to_server
      __return_value = LibGtk.places_sidebar_get_show_connect_to_server((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_desktop
      __return_value = LibGtk.places_sidebar_get_show_desktop((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def show_enter_location
      __return_value = LibGtk.places_sidebar_get_show_enter_location((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def list_shortcuts
      __return_value = LibGtk.places_sidebar_list_shortcuts((to_unsafe as LibGtk::PlacesSidebar*))
      __return_value
    end

    def remove_shortcut(location)
      __return_value = LibGtk.places_sidebar_remove_shortcut((to_unsafe as LibGtk::PlacesSidebar*), (location.to_unsafe as LibGio::File*))
      __return_value
    end

    def local_only=(local_only)
      __return_value = LibGtk.places_sidebar_set_local_only((to_unsafe as LibGtk::PlacesSidebar*), Bool.new(local_only))
      __return_value
    end

    def location=(location)
      __return_value = LibGtk.places_sidebar_set_location((to_unsafe as LibGtk::PlacesSidebar*), location && (location.to_unsafe as LibGio::File*))
      __return_value
    end

    def open_flags=(flags)
      __return_value = LibGtk.places_sidebar_set_open_flags((to_unsafe as LibGtk::PlacesSidebar*), flags)
      __return_value
    end

    def show_connect_to_server=(show_connect_to_server)
      __return_value = LibGtk.places_sidebar_set_show_connect_to_server((to_unsafe as LibGtk::PlacesSidebar*), Bool.new(show_connect_to_server))
      __return_value
    end

    def show_desktop=(show_desktop)
      __return_value = LibGtk.places_sidebar_set_show_desktop((to_unsafe as LibGtk::PlacesSidebar*), Bool.new(show_desktop))
      __return_value
    end

    def show_enter_location=(show_enter_location)
      __return_value = LibGtk.places_sidebar_set_show_enter_location((to_unsafe as LibGtk::PlacesSidebar*), Bool.new(show_enter_location))
      __return_value
    end

  end
end

