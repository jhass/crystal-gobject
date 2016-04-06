require "./entry"

module Gtk
  class SearchEntry < Entry
    def initialize(@gtk_search_entry)
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

    alias NextMatchSignal = SearchEntry -> 
    def on_next_match(&__block : NextMatchSignal)
      __callback = ->(_arg0 : LibGtk::SearchEntry*) {
       __return_value = __block.call(SearchEntry.new(_arg0))
       __return_value
      }
      connect("next-match", __callback)
    end

    alias PreviousMatchSignal = SearchEntry -> 
    def on_previous_match(&__block : PreviousMatchSignal)
      __callback = ->(_arg0 : LibGtk::SearchEntry*) {
       __return_value = __block.call(SearchEntry.new(_arg0))
       __return_value
      }
      connect("previous-match", __callback)
    end

    alias SearchChangedSignal = SearchEntry -> 
    def on_search_changed(&__block : SearchChangedSignal)
      __callback = ->(_arg0 : LibGtk::SearchEntry*) {
       __return_value = __block.call(SearchEntry.new(_arg0))
       __return_value
      }
      connect("search-changed", __callback)
    end

    alias StopSearchSignal = SearchEntry -> 
    def on_stop_search(&__block : StopSearchSignal)
      __callback = ->(_arg0 : LibGtk::SearchEntry*) {
       __return_value = __block.call(SearchEntry.new(_arg0))
       __return_value
      }
      connect("stop-search", __callback)
    end

  end
end

