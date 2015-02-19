module Gtk
  class EntryCompletion < GObject::Object
    def initialize @gtk_entry_completion
    end

    def to_unsafe
      @gtk_entry_completion.not_nil!
    end

    # Implements Buildable
    # Implements CellLayout

    def inline_completion=(__value)
      LibGtk.entry_completion_set_inline_completion((to_unsafe as LibGtk::EntryCompletion*), Bool.cast(__value))
    end

    def inline_selection=(__value)
      LibGtk.entry_completion_set_inline_selection((to_unsafe as LibGtk::EntryCompletion*), Bool.cast(__value))
    end

    def minimum_key_length=(__value)
      LibGtk.entry_completion_set_minimum_key_length((to_unsafe as LibGtk::EntryCompletion*), Int32.cast(__value))
    end

    def model=(__value)
      LibGtk.entry_completion_set_model((to_unsafe as LibGtk::EntryCompletion*), __value)
    end

    def popup_completion=(__value)
      LibGtk.entry_completion_set_popup_completion((to_unsafe as LibGtk::EntryCompletion*), Bool.cast(__value))
    end

    def popup_set_width=(__value)
      LibGtk.entry_completion_set_popup_set_width((to_unsafe as LibGtk::EntryCompletion*), Bool.cast(__value))
    end

    def popup_single_match=(__value)
      LibGtk.entry_completion_set_popup_single_match((to_unsafe as LibGtk::EntryCompletion*), Bool.cast(__value))
    end

    def text_column=(__value)
      LibGtk.entry_completion_set_text_column((to_unsafe as LibGtk::EntryCompletion*), Int32.cast(__value))
    end

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
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def delete_action(index)
      __return_value = LibGtk.entry_completion_delete_action((to_unsafe as LibGtk::EntryCompletion*), Int32.cast(index))
      __return_value
    end

    def completion_prefix
      __return_value = LibGtk.entry_completion_get_completion_prefix((to_unsafe as LibGtk::EntryCompletion*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
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
      __return_value = LibGtk.entry_completion_insert_action_markup((to_unsafe as LibGtk::EntryCompletion*), Int32.cast(index), markup)
      __return_value
    end

    def insert_action_text(index, text)
      __return_value = LibGtk.entry_completion_insert_action_text((to_unsafe as LibGtk::EntryCompletion*), Int32.cast(index), text)
      __return_value
    end

    def insert_prefix
      __return_value = LibGtk.entry_completion_insert_prefix((to_unsafe as LibGtk::EntryCompletion*))
      __return_value
    end

    def inline_completion=(inline_completion)
      __return_value = LibGtk.entry_completion_set_inline_completion((to_unsafe as LibGtk::EntryCompletion*), Bool.cast(inline_completion))
      __return_value
    end

    def inline_selection=(inline_selection)
      __return_value = LibGtk.entry_completion_set_inline_selection((to_unsafe as LibGtk::EntryCompletion*), Bool.cast(inline_selection))
      __return_value
    end

    def match_func=(func, func_data, func_notify)
      __return_value = LibGtk.entry_completion_set_match_func((to_unsafe as LibGtk::EntryCompletion*), func, func_data, func_notify)
      __return_value
    end

    def minimum_key_length=(length)
      __return_value = LibGtk.entry_completion_set_minimum_key_length((to_unsafe as LibGtk::EntryCompletion*), Int32.cast(length))
      __return_value
    end

    def model=(model)
      __return_value = LibGtk.entry_completion_set_model((to_unsafe as LibGtk::EntryCompletion*), (model.to_unsafe as LibGtk::TreeModel*))
      __return_value
    end

    def popup_completion=(popup_completion)
      __return_value = LibGtk.entry_completion_set_popup_completion((to_unsafe as LibGtk::EntryCompletion*), Bool.cast(popup_completion))
      __return_value
    end

    def popup_set_width=(popup_set_width)
      __return_value = LibGtk.entry_completion_set_popup_set_width((to_unsafe as LibGtk::EntryCompletion*), Bool.cast(popup_set_width))
      __return_value
    end

    def popup_single_match=(popup_single_match)
      __return_value = LibGtk.entry_completion_set_popup_single_match((to_unsafe as LibGtk::EntryCompletion*), Bool.cast(popup_single_match))
      __return_value
    end

    def text_column=(column)
      __return_value = LibGtk.entry_completion_set_text_column((to_unsafe as LibGtk::EntryCompletion*), Int32.cast(column))
      __return_value
    end

  end
end

