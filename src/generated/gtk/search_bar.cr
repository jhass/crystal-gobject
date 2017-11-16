require "./bin"

module Gtk
  class SearchBar < Bin
    @pointer : Void*
    def initialize(pointer : LibGtk::SearchBar*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SearchBar*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def search_mode_enabled
      __return_value = LibGtk.search_bar_get_search_mode_enabled(to_unsafe.as(LibGtk::SearchBar*))
      __return_value
    end

    def show_close_button
      __return_value = LibGtk.search_bar_get_show_close_button(to_unsafe.as(LibGtk::SearchBar*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.search_bar_new
      cast Gtk::Widget.new(__return_value)
    end

    def connect_entry(entry)
      LibGtk.search_bar_connect_entry(@pointer.as(LibGtk::SearchBar*), entry.to_unsafe.as(LibGtk::Entry*))
      nil
    end

    def search_mode
      __return_value = LibGtk.search_bar_get_search_mode(@pointer.as(LibGtk::SearchBar*))
      __return_value
    end

    def show_close_button
      __return_value = LibGtk.search_bar_get_show_close_button(@pointer.as(LibGtk::SearchBar*))
      __return_value
    end

    def handle_event(event)
      __return_value = LibGtk.search_bar_handle_event(@pointer.as(LibGtk::SearchBar*), event.to_unsafe.as(LibGdk::Event*))
      __return_value
    end

    def search_mode=(search_mode)
      LibGtk.search_bar_set_search_mode(@pointer.as(LibGtk::SearchBar*), search_mode)
      nil
    end

    def show_close_button=(visible)
      LibGtk.search_bar_set_show_close_button(@pointer.as(LibGtk::SearchBar*), visible)
      nil
    end

  end
end

