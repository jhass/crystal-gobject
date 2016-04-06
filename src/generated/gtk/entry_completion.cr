module Gtk
  class EntryCompletion < GObject::Object
    def initialize(@gtk_entry_completion)
    end

    def to_unsafe
      @gtk_entry_completion.not_nil!
    end

    # Implements Buildable
    # Implements CellLayout









    def self.new_internal
      __return_value = LibGtk.entry_completion_new
      Gtk::EntryCompletion.new(__return_value)
    end

    def self.new_with_area(area)
      __return_value = LibGtk.entry_completion_new_with_area((area.to_unsafe as LibGtk::CellArea*))
      Gtk::EntryCompletion.new(__return_value)
    end

    def complete
      __return_value = LibGtk.entry_completion_complete((to_unsafe as LibGtk::EntryCompletion*))
      __return_value
    end

    def compute_prefix(key)
      __return_value = LibGtk.entry_completion_compute_prefix((to_unsafe as LibGtk::EntryCompletion*), key)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def delete_action(index)
      __return_value = LibGtk.entry_completion_delete_action((to_unsafe as LibGtk::EntryCompletion*), Int32.new(index))
      __return_value
    end

    def completion_prefix
      __return_value = LibGtk.entry_completion_get_completion_prefix((to_unsafe as LibGtk::EntryCompletion*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def entry
      __return_value = LibGtk.entry_completion_get_entry((to_unsafe as LibGtk::EntryCompletion*))
      Gtk::Widget.new(__return_value)
    end

    def inline_completion
      __return_value = LibGtk.entry_completion_get_inline_completion((to_unsafe as LibGtk::EntryCompletion*))
      __return_value
    end

    def inline_selection
      __return_value = LibGtk.entry_completion_get_inline_selection((to_unsafe as LibGtk::EntryCompletion*))
      __return_value
    end

    def minimum_key_length
      __return_value = LibGtk.entry_completion_get_minimum_key_length((to_unsafe as LibGtk::EntryCompletion*))
      __return_value
    end

    def model
      __return_value = LibGtk.entry_completion_get_model((to_unsafe as LibGtk::EntryCompletion*))
      __return_value
    end

    def popup_completion
      __return_value = LibGtk.entry_completion_get_popup_completion((to_unsafe as LibGtk::EntryCompletion*))
      __return_value
    end

    def popup_set_width
      __return_value = LibGtk.entry_completion_get_popup_set_width((to_unsafe as LibGtk::EntryCompletion*))
      __return_value
    end

    def popup_single_match
      __return_value = LibGtk.entry_completion_get_popup_single_match((to_unsafe as LibGtk::EntryCompletion*))
      __return_value
    end

    def text_column
      __return_value = LibGtk.entry_completion_get_text_column((to_unsafe as LibGtk::EntryCompletion*))
      __return_value
    end

    def insert_action_markup(index, markup)
      __return_value = LibGtk.entry_completion_insert_action_markup((to_unsafe as LibGtk::EntryCompletion*), Int32.new(index), markup)
      __return_value
    end

    def insert_action_text(index, text)
      __return_value = LibGtk.entry_completion_insert_action_text((to_unsafe as LibGtk::EntryCompletion*), Int32.new(index), text)
      __return_value
    end

    def insert_prefix
      __return_value = LibGtk.entry_completion_insert_prefix((to_unsafe as LibGtk::EntryCompletion*))
      __return_value
    end

    def inline_completion=(inline_completion)
      __return_value = LibGtk.entry_completion_set_inline_completion((to_unsafe as LibGtk::EntryCompletion*), inline_completion)
      __return_value
    end

    def inline_selection=(inline_selection)
      __return_value = LibGtk.entry_completion_set_inline_selection((to_unsafe as LibGtk::EntryCompletion*), inline_selection)
      __return_value
    end

    def set_match_func(func : LibGtk::EntryCompletionMatchFunc, func_data, func_notify : LibGLib::DestroyNotify)
      __return_value = LibGtk.entry_completion_set_match_func((to_unsafe as LibGtk::EntryCompletion*), func, func_data, func_notify)
      __return_value
    end

    def minimum_key_length=(length)
      __return_value = LibGtk.entry_completion_set_minimum_key_length((to_unsafe as LibGtk::EntryCompletion*), Int32.new(length))
      __return_value
    end

    def model=(model)
      __return_value = LibGtk.entry_completion_set_model((to_unsafe as LibGtk::EntryCompletion*), model && (model.to_unsafe as LibGtk::TreeModel*))
      __return_value
    end

    def popup_completion=(popup_completion)
      __return_value = LibGtk.entry_completion_set_popup_completion((to_unsafe as LibGtk::EntryCompletion*), popup_completion)
      __return_value
    end

    def popup_set_width=(popup_set_width)
      __return_value = LibGtk.entry_completion_set_popup_set_width((to_unsafe as LibGtk::EntryCompletion*), popup_set_width)
      __return_value
    end

    def popup_single_match=(popup_single_match)
      __return_value = LibGtk.entry_completion_set_popup_single_match((to_unsafe as LibGtk::EntryCompletion*), popup_single_match)
      __return_value
    end

    def text_column=(column)
      __return_value = LibGtk.entry_completion_set_text_column((to_unsafe as LibGtk::EntryCompletion*), Int32.new(column))
      __return_value
    end

    alias ActionActivatedSignal = EntryCompletion, Int32 -> 
    def on_action_activated(&__block : ActionActivatedSignal)
      __callback = ->(_arg0 : LibGtk::EntryCompletion*, _arg1 : LibGtk::Int32*) {
       __return_value = __block.call(EntryCompletion.new(_arg0), _arg1)
       __return_value
      }
      connect("action-activated", __callback)
    end

    alias CursorOnMatchSignal = EntryCompletion, Gtk::TreeModel, Gtk::TreeIter -> Bool
    def on_cursor_on_match(&__block : CursorOnMatchSignal)
      __callback = ->(_arg0 : LibGtk::EntryCompletion*, _arg1 : LibGtk::LibGtk::TreeModel*, _arg2 : LibGtk::LibGtk::TreeIter*) {
       __return_value = __block.call(EntryCompletion.new(_arg0), _arg1, Gtk::TreeIter.new(_arg2))
       __return_value
      }
      connect("cursor-on-match", __callback)
    end

    alias InsertPrefixSignal = EntryCompletion, UInt8 -> Bool
    def on_insert_prefix(&__block : InsertPrefixSignal)
      __callback = ->(_arg0 : LibGtk::EntryCompletion*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(EntryCompletion.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)))
       __return_value
      }
      connect("insert-prefix", __callback)
    end

    alias MatchSelectedSignal = EntryCompletion, Gtk::TreeModel, Gtk::TreeIter -> Bool
    def on_match_selected(&__block : MatchSelectedSignal)
      __callback = ->(_arg0 : LibGtk::EntryCompletion*, _arg1 : LibGtk::LibGtk::TreeModel*, _arg2 : LibGtk::LibGtk::TreeIter*) {
       __return_value = __block.call(EntryCompletion.new(_arg0), _arg1, Gtk::TreeIter.new(_arg2))
       __return_value
      }
      connect("match-selected", __callback)
    end

    alias NoMatchesSignal = EntryCompletion -> 
    def on_no_matches(&__block : NoMatchesSignal)
      __callback = ->(_arg0 : LibGtk::EntryCompletion*) {
       __return_value = __block.call(EntryCompletion.new(_arg0))
       __return_value
      }
      connect("no-matches", __callback)
    end

  end
end

