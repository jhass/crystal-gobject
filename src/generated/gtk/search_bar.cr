require "./bin"

module Gtk
  class SearchBar < Bin
    def initialize(@gtk_search_bar)
    end

    def to_unsafe
      @gtk_search_bar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable


    def self.new_internal
      __return_value = LibGtk.search_bar_new
      Gtk::Widget.new(__return_value)
    end

    def connect_entry(entry)
      __return_value = LibGtk.search_bar_connect_entry((to_unsafe as LibGtk::SearchBar*), (entry.to_unsafe as LibGtk::Entry*))
      __return_value
    end

    def search_mode
      __return_value = LibGtk.search_bar_get_search_mode((to_unsafe as LibGtk::SearchBar*))
      __return_value
    end

    def show_close_button
      __return_value = LibGtk.search_bar_get_show_close_button((to_unsafe as LibGtk::SearchBar*))
      __return_value
    end

    def handle_event(event)
      __return_value = LibGtk.search_bar_handle_event((to_unsafe as LibGtk::SearchBar*), (event.to_unsafe as LibGdk::Event*))
      __return_value
    end

    def search_mode=(search_mode)
      __return_value = LibGtk.search_bar_set_search_mode((to_unsafe as LibGtk::SearchBar*), search_mode)
      __return_value
    end

    def show_close_button=(visible)
      __return_value = LibGtk.search_bar_set_show_close_button((to_unsafe as LibGtk::SearchBar*), visible)
      __return_value
    end

  end
end

