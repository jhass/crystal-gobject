module Gtk
  class EntryCompletion < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::EntryCompletion*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EntryCompletion*)
    end

    # Implements Buildable
    # Implements CellLayout
    def cell_area
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cell_area", gvalue)
      Gtk::CellArea.cast(gvalue.object)
    end

    def inline_completion
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "inline_completion", gvalue)
      gvalue.boolean
    end

    def inline_selection
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "inline_selection", gvalue)
      gvalue.boolean
    end

    def minimum_key_length
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "minimum_key_length", gvalue)
      gvalue
    end

    def model
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "model", gvalue)
      gvalue
    end

    def popup_completion
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "popup_completion", gvalue)
      gvalue.boolean
    end

    def popup_set_width
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "popup_set_width", gvalue)
      gvalue.boolean
    end

    def popup_single_match
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "popup_single_match", gvalue)
      gvalue.boolean
    end

    def text_column
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text_column", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGtk.entry_completion_new
      cast Gtk::EntryCompletion.new(__return_value)
    end

    def self.new_with_area(area) : self
      __return_value = LibGtk.entry_completion_new_with_area(area.to_unsafe.as(LibGtk::CellArea*))
      cast Gtk::EntryCompletion.new(__return_value)
    end

    def complete
      LibGtk.entry_completion_complete(@pointer.as(LibGtk::EntryCompletion*))
      nil
    end

    def compute_prefix(key)
      __return_value = LibGtk.entry_completion_compute_prefix(@pointer.as(LibGtk::EntryCompletion*), key.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def delete_action(index)
      LibGtk.entry_completion_delete_action(@pointer.as(LibGtk::EntryCompletion*), Int32.new(index))
      nil
    end

    def completion_prefix
      __return_value = LibGtk.entry_completion_get_completion_prefix(@pointer.as(LibGtk::EntryCompletion*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def entry
      __return_value = LibGtk.entry_completion_get_entry(@pointer.as(LibGtk::EntryCompletion*))
      Gtk::Widget.new(__return_value)
    end

    def inline_completion
      __return_value = LibGtk.entry_completion_get_inline_completion(@pointer.as(LibGtk::EntryCompletion*))
      __return_value
    end

    def inline_selection
      __return_value = LibGtk.entry_completion_get_inline_selection(@pointer.as(LibGtk::EntryCompletion*))
      __return_value
    end

    def minimum_key_length
      __return_value = LibGtk.entry_completion_get_minimum_key_length(@pointer.as(LibGtk::EntryCompletion*))
      __return_value
    end

    def model
      __return_value = LibGtk.entry_completion_get_model(@pointer.as(LibGtk::EntryCompletion*))
      __return_value if __return_value
    end

    def popup_completion
      __return_value = LibGtk.entry_completion_get_popup_completion(@pointer.as(LibGtk::EntryCompletion*))
      __return_value
    end

    def popup_set_width
      __return_value = LibGtk.entry_completion_get_popup_set_width(@pointer.as(LibGtk::EntryCompletion*))
      __return_value
    end

    def popup_single_match
      __return_value = LibGtk.entry_completion_get_popup_single_match(@pointer.as(LibGtk::EntryCompletion*))
      __return_value
    end

    def text_column
      __return_value = LibGtk.entry_completion_get_text_column(@pointer.as(LibGtk::EntryCompletion*))
      __return_value
    end

    def insert_action_markup(index, markup)
      LibGtk.entry_completion_insert_action_markup(@pointer.as(LibGtk::EntryCompletion*), Int32.new(index), markup.to_unsafe)
      nil
    end

    def insert_action_text(index, text)
      LibGtk.entry_completion_insert_action_text(@pointer.as(LibGtk::EntryCompletion*), Int32.new(index), text.to_unsafe)
      nil
    end

    def insert_prefix
      LibGtk.entry_completion_insert_prefix(@pointer.as(LibGtk::EntryCompletion*))
      nil
    end

    def inline_completion=(inline_completion)
      LibGtk.entry_completion_set_inline_completion(@pointer.as(LibGtk::EntryCompletion*), inline_completion)
      nil
    end

    def inline_selection=(inline_selection)
      LibGtk.entry_completion_set_inline_selection(@pointer.as(LibGtk::EntryCompletion*), inline_selection)
      nil
    end

    def set_match_func(func, func_data, func_notify)
      LibGtk.entry_completion_set_match_func(@pointer.as(LibGtk::EntryCompletion*), func, func_data ? func_data : nil, func_notify)
      nil
    end

    def minimum_key_length=(length)
      LibGtk.entry_completion_set_minimum_key_length(@pointer.as(LibGtk::EntryCompletion*), Int32.new(length))
      nil
    end

    def model=(model)
      LibGtk.entry_completion_set_model(@pointer.as(LibGtk::EntryCompletion*), model ? model.to_unsafe.as(LibGtk::TreeModel*) : nil)
      nil
    end

    def popup_completion=(popup_completion)
      LibGtk.entry_completion_set_popup_completion(@pointer.as(LibGtk::EntryCompletion*), popup_completion)
      nil
    end

    def popup_set_width=(popup_set_width)
      LibGtk.entry_completion_set_popup_set_width(@pointer.as(LibGtk::EntryCompletion*), popup_set_width)
      nil
    end

    def popup_single_match=(popup_single_match)
      LibGtk.entry_completion_set_popup_single_match(@pointer.as(LibGtk::EntryCompletion*), popup_single_match)
      nil
    end

    def text_column=(column)
      LibGtk.entry_completion_set_text_column(@pointer.as(LibGtk::EntryCompletion*), Int32.new(column))
      nil
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

    alias InsertPrefixSignal = EntryCompletion, String -> Bool
    def on_insert_prefix(&__block : InsertPrefixSignal)
      __callback = ->(_arg0 : LibGtk::EntryCompletion*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(EntryCompletion.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
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

