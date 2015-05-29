require "./entry"

module Gtk
  class SearchEntry < Entry
    def initialize @gtk_search_entry
    end

    def to_unsafe
      @gtk_search_entry.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellEditable
    # Implements Editable
    def self.new_internal
      __return_value = LibGtk.search_entry_new
      Gtk::Widget.new(__return_value)
    end

    def handle_event(event)
      __return_value = LibGtk.search_entry_handle_event((to_unsafe as LibGtk::SearchEntry*), (event.to_unsafe as LibGdk::Event*))
      __return_value
    end

  end
end

