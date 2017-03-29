module Gtk
  module Editable
    def copy_clipboard
      __return_value = LibGtk.editable_copy_clipboard(to_unsafe.as(LibGtk::Editable*))
      __return_value
    end

    def cut_clipboard
      __return_value = LibGtk.editable_cut_clipboard(to_unsafe.as(LibGtk::Editable*))
      __return_value
    end

    def delete_selection
      __return_value = LibGtk.editable_delete_selection(to_unsafe.as(LibGtk::Editable*))
      __return_value
    end

    def delete_text(start_pos, end_pos)
      __return_value = LibGtk.editable_delete_text(to_unsafe.as(LibGtk::Editable*), Int32.new(start_pos), Int32.new(end_pos))
      __return_value
    end

    def chars(start_pos, end_pos)
      __return_value = LibGtk.editable_get_chars(to_unsafe.as(LibGtk::Editable*), Int32.new(start_pos), Int32.new(end_pos))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def editable
      __return_value = LibGtk.editable_get_editable(to_unsafe.as(LibGtk::Editable*))
      __return_value
    end

    def position
      __return_value = LibGtk.editable_get_position(to_unsafe.as(LibGtk::Editable*))
      __return_value
    end

    def selection_bounds(start_pos, end_pos)
      __return_value = LibGtk.editable_get_selection_bounds(to_unsafe.as(LibGtk::Editable*), start_pos, end_pos)
      __return_value
    end

    def insert_text(new_text, new_text_length, position)
      __return_value = LibGtk.editable_insert_text(to_unsafe.as(LibGtk::Editable*), new_text.to_unsafe, Int32.new(new_text_length), position)
      __return_value
    end

    def paste_clipboard
      __return_value = LibGtk.editable_paste_clipboard(to_unsafe.as(LibGtk::Editable*))
      __return_value
    end

    def select_region(start_pos, end_pos)
      __return_value = LibGtk.editable_select_region(to_unsafe.as(LibGtk::Editable*), Int32.new(start_pos), Int32.new(end_pos))
      __return_value
    end

    def editable=(is_editable)
      __return_value = LibGtk.editable_set_editable(to_unsafe.as(LibGtk::Editable*), is_editable)
      __return_value
    end

    def position=(position)
      __return_value = LibGtk.editable_set_position(to_unsafe.as(LibGtk::Editable*), Int32.new(position))
      __return_value
    end

    alias ChangedSignal = Editable ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::Editable*) {
       __return_value = __block.call(Editable.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

    alias DeleteTextSignal = Editable, Int32, Int32 ->
    def on_delete_text(&__block : DeleteTextSignal)
      __callback = ->(_arg0 : LibGtk::Editable*, _arg1 : LibGtk::Int32*, _arg2 : LibGtk::Int32*) {
       __return_value = __block.call(Editable.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("delete-text", __callback)
    end

    alias InsertTextSignal = Editable, String, Int32, Int32 ->
    def on_insert_text(&__block : InsertTextSignal)
      __callback = ->(_arg0 : LibGtk::Editable*, _arg1 : LibGtk::UInt8**, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::Int32*) {
       __return_value = __block.call(Editable.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), _arg2, _arg3)
       __return_value
      }
      connect("insert-text", __callback)
    end

  end
end

