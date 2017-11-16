module Gtk
  class TextBuffer < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::TextBuffer*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextBuffer*)
    end

    def copy_target_list
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "copy_target_list", gvalue)
      Gtk::TargetList.cast(gvalue.object)
    end

    def cursor_position
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cursor_position", gvalue)
      gvalue
    end

    def has_selection
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "has_selection", gvalue)
      gvalue.boolean
    end

    def paste_target_list
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "paste_target_list", gvalue)
      Gtk::TargetList.cast(gvalue.object)
    end

    def tag_table
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tag_table", gvalue)
      Gtk::TextTagTable.cast(gvalue.object)
    end

    def text
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "text", gvalue)
      gvalue.string
    end

    def self.new(table) : self
      __return_value = LibGtk.text_buffer_new(table ? table.to_unsafe.as(LibGtk::TextTagTable*) : nil)
      cast Gtk::TextBuffer.new(__return_value)
    end

    def add_mark(mark, where)
      LibGtk.text_buffer_add_mark(@pointer.as(LibGtk::TextBuffer*), mark.to_unsafe.as(LibGtk::TextMark*), where.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def add_selection_clipboard(clipboard)
      LibGtk.text_buffer_add_selection_clipboard(@pointer.as(LibGtk::TextBuffer*), clipboard.to_unsafe.as(LibGtk::Clipboard*))
      nil
    end

    def apply_tag(tag, start, end)
      LibGtk.text_buffer_apply_tag(@pointer.as(LibGtk::TextBuffer*), tag.to_unsafe.as(LibGtk::TextTag*), start.to_unsafe.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def apply_tag_by_name(name, start, end)
      LibGtk.text_buffer_apply_tag_by_name(@pointer.as(LibGtk::TextBuffer*), name.to_unsafe, start.to_unsafe.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def backspace(iter, interactive, default_editable)
      __return_value = LibGtk.text_buffer_backspace(@pointer.as(LibGtk::TextBuffer*), iter.to_unsafe.as(LibGtk::TextIter*), interactive, default_editable)
      __return_value
    end

    def begin_user_action
      LibGtk.text_buffer_begin_user_action(@pointer.as(LibGtk::TextBuffer*))
      nil
    end

    def copy_clipboard(clipboard)
      LibGtk.text_buffer_copy_clipboard(@pointer.as(LibGtk::TextBuffer*), clipboard.to_unsafe.as(LibGtk::Clipboard*))
      nil
    end

    def create_child_anchor(iter)
      __return_value = LibGtk.text_buffer_create_child_anchor(@pointer.as(LibGtk::TextBuffer*), iter.to_unsafe.as(LibGtk::TextIter*))
      Gtk::TextChildAnchor.new(__return_value)
    end

    def create_mark(mark_name, where, left_gravity)
      __return_value = LibGtk.text_buffer_create_mark(@pointer.as(LibGtk::TextBuffer*), mark_name ? mark_name.to_unsafe : nil, where.to_unsafe.as(LibGtk::TextIter*), left_gravity)
      Gtk::TextMark.new(__return_value)
    end

    def cut_clipboard(clipboard, default_editable)
      LibGtk.text_buffer_cut_clipboard(@pointer.as(LibGtk::TextBuffer*), clipboard.to_unsafe.as(LibGtk::Clipboard*), default_editable)
      nil
    end

    def delete(start, end)
      LibGtk.text_buffer_delete(@pointer.as(LibGtk::TextBuffer*), start.to_unsafe.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def delete_interactive(start_iter, end_iter, default_editable)
      __return_value = LibGtk.text_buffer_delete_interactive(@pointer.as(LibGtk::TextBuffer*), start_iter.to_unsafe.as(LibGtk::TextIter*), end_iter.to_unsafe.as(LibGtk::TextIter*), default_editable)
      __return_value
    end

    def delete_mark(mark)
      LibGtk.text_buffer_delete_mark(@pointer.as(LibGtk::TextBuffer*), mark.to_unsafe.as(LibGtk::TextMark*))
      nil
    end

    def delete_mark_by_name(name)
      LibGtk.text_buffer_delete_mark_by_name(@pointer.as(LibGtk::TextBuffer*), name.to_unsafe)
      nil
    end

    def delete_selection(interactive, default_editable)
      __return_value = LibGtk.text_buffer_delete_selection(@pointer.as(LibGtk::TextBuffer*), interactive, default_editable)
      __return_value
    end

    def deserialize(content_buffer, format, iter, data, length) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGtk.text_buffer_deserialize(@pointer.as(LibGtk::TextBuffer*), content_buffer.to_unsafe.as(LibGtk::TextBuffer*), format.to_unsafe.as(LibGdk::Atom*), iter.to_unsafe.as(LibGtk::TextIter*), data, UInt64.new(length), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def deserialize_get_can_create_tags(format)
      __return_value = LibGtk.text_buffer_deserialize_get_can_create_tags(@pointer.as(LibGtk::TextBuffer*), format.to_unsafe.as(LibGdk::Atom*))
      __return_value
    end

    def deserialize_set_can_create_tags(format, can_create_tags)
      LibGtk.text_buffer_deserialize_set_can_create_tags(@pointer.as(LibGtk::TextBuffer*), format.to_unsafe.as(LibGdk::Atom*), can_create_tags)
      nil
    end

    def end_user_action
      LibGtk.text_buffer_end_user_action(@pointer.as(LibGtk::TextBuffer*))
      nil
    end

    def bounds(start, end)
      LibGtk.text_buffer_get_bounds(@pointer.as(LibGtk::TextBuffer*), start, end)
      nil
    end

    def char_count
      __return_value = LibGtk.text_buffer_get_char_count(@pointer.as(LibGtk::TextBuffer*))
      __return_value
    end

    def copy_target_list
      __return_value = LibGtk.text_buffer_get_copy_target_list(@pointer.as(LibGtk::TextBuffer*))
      Gtk::TargetList.new(__return_value)
    end

    def deserialize_formats(n_formats)
      __return_value = LibGtk.text_buffer_get_deserialize_formats(@pointer.as(LibGtk::TextBuffer*), n_formats)
      PointerIterator.new(__return_value) {|__item| Gdk::Atom.new(__item) }
    end

    def end_iter(iter)
      LibGtk.text_buffer_get_end_iter(@pointer.as(LibGtk::TextBuffer*), iter)
      nil
    end

    def has_selection
      __return_value = LibGtk.text_buffer_get_has_selection(@pointer.as(LibGtk::TextBuffer*))
      __return_value
    end

    def insert
      __return_value = LibGtk.text_buffer_get_insert(@pointer.as(LibGtk::TextBuffer*))
      Gtk::TextMark.new(__return_value)
    end

    def iter_at_child_anchor(iter, anchor)
      LibGtk.text_buffer_get_iter_at_child_anchor(@pointer.as(LibGtk::TextBuffer*), iter, anchor.to_unsafe.as(LibGtk::TextChildAnchor*))
      nil
    end

    def iter_at_line(iter, line_number)
      LibGtk.text_buffer_get_iter_at_line(@pointer.as(LibGtk::TextBuffer*), iter, Int32.new(line_number))
      nil
    end

    def iter_at_line_index(iter, line_number, byte_index)
      LibGtk.text_buffer_get_iter_at_line_index(@pointer.as(LibGtk::TextBuffer*), iter, Int32.new(line_number), Int32.new(byte_index))
      nil
    end

    def iter_at_line_offset(iter, line_number, char_offset)
      LibGtk.text_buffer_get_iter_at_line_offset(@pointer.as(LibGtk::TextBuffer*), iter, Int32.new(line_number), Int32.new(char_offset))
      nil
    end

    def iter_at_mark(iter, mark)
      LibGtk.text_buffer_get_iter_at_mark(@pointer.as(LibGtk::TextBuffer*), iter, mark.to_unsafe.as(LibGtk::TextMark*))
      nil
    end

    def iter_at_offset(iter, char_offset)
      LibGtk.text_buffer_get_iter_at_offset(@pointer.as(LibGtk::TextBuffer*), iter, Int32.new(char_offset))
      nil
    end

    def line_count
      __return_value = LibGtk.text_buffer_get_line_count(@pointer.as(LibGtk::TextBuffer*))
      __return_value
    end

    def mark(name)
      __return_value = LibGtk.text_buffer_get_mark(@pointer.as(LibGtk::TextBuffer*), name.to_unsafe)
      Gtk::TextMark.new(__return_value) if __return_value
    end

    def modified
      __return_value = LibGtk.text_buffer_get_modified(@pointer.as(LibGtk::TextBuffer*))
      __return_value
    end

    def paste_target_list
      __return_value = LibGtk.text_buffer_get_paste_target_list(@pointer.as(LibGtk::TextBuffer*))
      Gtk::TargetList.new(__return_value)
    end

    def selection_bound
      __return_value = LibGtk.text_buffer_get_selection_bound(@pointer.as(LibGtk::TextBuffer*))
      Gtk::TextMark.new(__return_value)
    end

    def selection_bounds(start, end)
      __return_value = LibGtk.text_buffer_get_selection_bounds(@pointer.as(LibGtk::TextBuffer*), start, end)
      __return_value
    end

    def serialize_formats(n_formats)
      __return_value = LibGtk.text_buffer_get_serialize_formats(@pointer.as(LibGtk::TextBuffer*), n_formats)
      PointerIterator.new(__return_value) {|__item| Gdk::Atom.new(__item) }
    end

    def slice(start, end, include_hidden_chars)
      __return_value = LibGtk.text_buffer_get_slice(@pointer.as(LibGtk::TextBuffer*), start.to_unsafe.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*), include_hidden_chars)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def start_iter(iter)
      LibGtk.text_buffer_get_start_iter(@pointer.as(LibGtk::TextBuffer*), iter)
      nil
    end

    def tag_table
      __return_value = LibGtk.text_buffer_get_tag_table(@pointer.as(LibGtk::TextBuffer*))
      Gtk::TextTagTable.new(__return_value)
    end

    def text(start, end, include_hidden_chars)
      __return_value = LibGtk.text_buffer_get_text(@pointer.as(LibGtk::TextBuffer*), start.to_unsafe.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*), include_hidden_chars)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def insert(iter, text, len)
      LibGtk.text_buffer_insert(@pointer.as(LibGtk::TextBuffer*), iter.to_unsafe.as(LibGtk::TextIter*), text.to_unsafe, Int32.new(len))
      nil
    end

    def insert_at_cursor(text, len)
      LibGtk.text_buffer_insert_at_cursor(@pointer.as(LibGtk::TextBuffer*), text.to_unsafe, Int32.new(len))
      nil
    end

    def insert_child_anchor(iter, anchor)
      LibGtk.text_buffer_insert_child_anchor(@pointer.as(LibGtk::TextBuffer*), iter.to_unsafe.as(LibGtk::TextIter*), anchor.to_unsafe.as(LibGtk::TextChildAnchor*))
      nil
    end

    def insert_interactive(iter, text, len, default_editable)
      __return_value = LibGtk.text_buffer_insert_interactive(@pointer.as(LibGtk::TextBuffer*), iter.to_unsafe.as(LibGtk::TextIter*), text.to_unsafe, Int32.new(len), default_editable)
      __return_value
    end

    def insert_interactive_at_cursor(text, len, default_editable)
      __return_value = LibGtk.text_buffer_insert_interactive_at_cursor(@pointer.as(LibGtk::TextBuffer*), text.to_unsafe, Int32.new(len), default_editable)
      __return_value
    end

    def insert_markup(iter, markup, len)
      LibGtk.text_buffer_insert_markup(@pointer.as(LibGtk::TextBuffer*), iter.to_unsafe.as(LibGtk::TextIter*), markup.to_unsafe, Int32.new(len))
      nil
    end

    def insert_pixbuf(iter, pixbuf)
      LibGtk.text_buffer_insert_pixbuf(@pointer.as(LibGtk::TextBuffer*), iter.to_unsafe.as(LibGtk::TextIter*), pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*))
      nil
    end

    def insert_range(iter, start, end)
      LibGtk.text_buffer_insert_range(@pointer.as(LibGtk::TextBuffer*), iter.to_unsafe.as(LibGtk::TextIter*), start.to_unsafe.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def insert_range_interactive(iter, start, end, default_editable)
      __return_value = LibGtk.text_buffer_insert_range_interactive(@pointer.as(LibGtk::TextBuffer*), iter.to_unsafe.as(LibGtk::TextIter*), start.to_unsafe.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*), default_editable)
      __return_value
    end

    def move_mark(mark, where)
      LibGtk.text_buffer_move_mark(@pointer.as(LibGtk::TextBuffer*), mark.to_unsafe.as(LibGtk::TextMark*), where.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def move_mark_by_name(name, where)
      LibGtk.text_buffer_move_mark_by_name(@pointer.as(LibGtk::TextBuffer*), name.to_unsafe, where.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def paste_clipboard(clipboard, override_location, default_editable)
      LibGtk.text_buffer_paste_clipboard(@pointer.as(LibGtk::TextBuffer*), clipboard.to_unsafe.as(LibGtk::Clipboard*), override_location ? override_location.to_unsafe.as(LibGtk::TextIter*) : nil, default_editable)
      nil
    end

    def place_cursor(where)
      LibGtk.text_buffer_place_cursor(@pointer.as(LibGtk::TextBuffer*), where.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def register_deserialize_format(mime_type, function, user_data, user_data_destroy)
      __return_value = LibGtk.text_buffer_register_deserialize_format(@pointer.as(LibGtk::TextBuffer*), mime_type.to_unsafe, function, user_data ? user_data : nil, user_data_destroy)
      Gdk::Atom.new(__return_value)
    end

    def register_deserialize_tagset(tagset_name)
      __return_value = LibGtk.text_buffer_register_deserialize_tagset(@pointer.as(LibGtk::TextBuffer*), tagset_name ? tagset_name.to_unsafe : nil)
      Gdk::Atom.new(__return_value)
    end

    def register_serialize_format(mime_type, function, user_data, user_data_destroy)
      __return_value = LibGtk.text_buffer_register_serialize_format(@pointer.as(LibGtk::TextBuffer*), mime_type.to_unsafe, function, user_data ? user_data : nil, user_data_destroy)
      Gdk::Atom.new(__return_value)
    end

    def register_serialize_tagset(tagset_name)
      __return_value = LibGtk.text_buffer_register_serialize_tagset(@pointer.as(LibGtk::TextBuffer*), tagset_name ? tagset_name.to_unsafe : nil)
      Gdk::Atom.new(__return_value)
    end

    def remove_all_tags(start, end)
      LibGtk.text_buffer_remove_all_tags(@pointer.as(LibGtk::TextBuffer*), start.to_unsafe.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def remove_selection_clipboard(clipboard)
      LibGtk.text_buffer_remove_selection_clipboard(@pointer.as(LibGtk::TextBuffer*), clipboard.to_unsafe.as(LibGtk::Clipboard*))
      nil
    end

    def remove_tag(tag, start, end)
      LibGtk.text_buffer_remove_tag(@pointer.as(LibGtk::TextBuffer*), tag.to_unsafe.as(LibGtk::TextTag*), start.to_unsafe.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def remove_tag_by_name(name, start, end)
      LibGtk.text_buffer_remove_tag_by_name(@pointer.as(LibGtk::TextBuffer*), name.to_unsafe, start.to_unsafe.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def select_range(ins, bound)
      LibGtk.text_buffer_select_range(@pointer.as(LibGtk::TextBuffer*), ins.to_unsafe.as(LibGtk::TextIter*), bound.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def serialize(content_buffer, format, start, end, length)
      __return_value = LibGtk.text_buffer_serialize(@pointer.as(LibGtk::TextBuffer*), content_buffer.to_unsafe.as(LibGtk::TextBuffer*), format.to_unsafe.as(LibGdk::Atom*), start.to_unsafe.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*), length)
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def modified=(setting)
      LibGtk.text_buffer_set_modified(@pointer.as(LibGtk::TextBuffer*), setting)
      nil
    end

    def set_text(text, len)
      LibGtk.text_buffer_set_text(@pointer.as(LibGtk::TextBuffer*), text.to_unsafe, Int32.new(len))
      nil
    end

    def unregister_deserialize_format(format)
      LibGtk.text_buffer_unregister_deserialize_format(@pointer.as(LibGtk::TextBuffer*), format.to_unsafe.as(LibGdk::Atom*))
      nil
    end

    def unregister_serialize_format(format)
      LibGtk.text_buffer_unregister_serialize_format(@pointer.as(LibGtk::TextBuffer*), format.to_unsafe.as(LibGdk::Atom*))
      nil
    end

    alias ApplyTagSignal = TextBuffer, Gtk::TextTag, Gtk::TextIter, Gtk::TextIter ->
    def on_apply_tag(&__block : ApplyTagSignal)
      __callback = ->(_arg0 : LibGtk::TextBuffer*, _arg1 : LibGtk::LibGtk::TextTag**, _arg2 : LibGtk::LibGtk::TextIter*, _arg3 : LibGtk::LibGtk::TextIter*) {
       __return_value = __block.call(TextBuffer.new(_arg0), Gtk::TextTag.new(_arg1), Gtk::TextIter.new(_arg2), Gtk::TextIter.new(_arg3))
       __return_value
      }
      connect("apply-tag", __callback)
    end

    alias BeginUserActionSignal = TextBuffer ->
    def on_begin_user_action(&__block : BeginUserActionSignal)
      __callback = ->(_arg0 : LibGtk::TextBuffer*) {
       __return_value = __block.call(TextBuffer.new(_arg0))
       __return_value
      }
      connect("begin-user-action", __callback)
    end

    alias ChangedSignal = TextBuffer ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGtk::TextBuffer*) {
       __return_value = __block.call(TextBuffer.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

    alias DeleteRangeSignal = TextBuffer, Gtk::TextIter, Gtk::TextIter ->
    def on_delete_range(&__block : DeleteRangeSignal)
      __callback = ->(_arg0 : LibGtk::TextBuffer*, _arg1 : LibGtk::LibGtk::TextIter*, _arg2 : LibGtk::LibGtk::TextIter*) {
       __return_value = __block.call(TextBuffer.new(_arg0), Gtk::TextIter.new(_arg1), Gtk::TextIter.new(_arg2))
       __return_value
      }
      connect("delete-range", __callback)
    end

    alias EndUserActionSignal = TextBuffer ->
    def on_end_user_action(&__block : EndUserActionSignal)
      __callback = ->(_arg0 : LibGtk::TextBuffer*) {
       __return_value = __block.call(TextBuffer.new(_arg0))
       __return_value
      }
      connect("end-user-action", __callback)
    end

    alias InsertChildAnchorSignal = TextBuffer, Gtk::TextIter, Gtk::TextChildAnchor ->
    def on_insert_child_anchor(&__block : InsertChildAnchorSignal)
      __callback = ->(_arg0 : LibGtk::TextBuffer*, _arg1 : LibGtk::LibGtk::TextIter*, _arg2 : LibGtk::LibGtk::TextChildAnchor**) {
       __return_value = __block.call(TextBuffer.new(_arg0), Gtk::TextIter.new(_arg1), Gtk::TextChildAnchor.new(_arg2))
       __return_value
      }
      connect("insert-child-anchor", __callback)
    end

    alias InsertPixbufSignal = TextBuffer, Gtk::TextIter, GdkPixbuf::Pixbuf ->
    def on_insert_pixbuf(&__block : InsertPixbufSignal)
      __callback = ->(_arg0 : LibGtk::TextBuffer*, _arg1 : LibGtk::LibGtk::TextIter*, _arg2 : LibGtk::LibGdkPixbuf::Pixbuf**) {
       __return_value = __block.call(TextBuffer.new(_arg0), Gtk::TextIter.new(_arg1), GdkPixbuf::Pixbuf.new(_arg2))
       __return_value
      }
      connect("insert-pixbuf", __callback)
    end

    alias InsertTextSignal = TextBuffer, Gtk::TextIter, String, Int32 ->
    def on_insert_text(&__block : InsertTextSignal)
      __callback = ->(_arg0 : LibGtk::TextBuffer*, _arg1 : LibGtk::LibGtk::TextIter*, _arg2 : LibGtk::UInt8**, _arg3 : LibGtk::Int32*) {
       __return_value = __block.call(TextBuffer.new(_arg0), Gtk::TextIter.new(_arg1), (raise "Expected string but got null" unless _arg2; ::String.new(_arg2)), _arg3)
       __return_value
      }
      connect("insert-text", __callback)
    end

    alias MarkDeletedSignal = TextBuffer, Gtk::TextMark ->
    def on_mark_deleted(&__block : MarkDeletedSignal)
      __callback = ->(_arg0 : LibGtk::TextBuffer*, _arg1 : LibGtk::LibGtk::TextMark**) {
       __return_value = __block.call(TextBuffer.new(_arg0), Gtk::TextMark.new(_arg1))
       __return_value
      }
      connect("mark-deleted", __callback)
    end

    alias MarkSetSignal = TextBuffer, Gtk::TextIter, Gtk::TextMark ->
    def on_mark_set(&__block : MarkSetSignal)
      __callback = ->(_arg0 : LibGtk::TextBuffer*, _arg1 : LibGtk::LibGtk::TextIter*, _arg2 : LibGtk::LibGtk::TextMark**) {
       __return_value = __block.call(TextBuffer.new(_arg0), Gtk::TextIter.new(_arg1), Gtk::TextMark.new(_arg2))
       __return_value
      }
      connect("mark-set", __callback)
    end

    alias ModifiedChangedSignal = TextBuffer ->
    def on_modified_changed(&__block : ModifiedChangedSignal)
      __callback = ->(_arg0 : LibGtk::TextBuffer*) {
       __return_value = __block.call(TextBuffer.new(_arg0))
       __return_value
      }
      connect("modified-changed", __callback)
    end

    alias PasteDoneSignal = TextBuffer, Gtk::Clipboard ->
    def on_paste_done(&__block : PasteDoneSignal)
      __callback = ->(_arg0 : LibGtk::TextBuffer*, _arg1 : LibGtk::LibGtk::Clipboard**) {
       __return_value = __block.call(TextBuffer.new(_arg0), Gtk::Clipboard.new(_arg1))
       __return_value
      }
      connect("paste-done", __callback)
    end

    alias RemoveTagSignal = TextBuffer, Gtk::TextTag, Gtk::TextIter, Gtk::TextIter ->
    def on_remove_tag(&__block : RemoveTagSignal)
      __callback = ->(_arg0 : LibGtk::TextBuffer*, _arg1 : LibGtk::LibGtk::TextTag**, _arg2 : LibGtk::LibGtk::TextIter*, _arg3 : LibGtk::LibGtk::TextIter*) {
       __return_value = __block.call(TextBuffer.new(_arg0), Gtk::TextTag.new(_arg1), Gtk::TextIter.new(_arg2), Gtk::TextIter.new(_arg3))
       __return_value
      }
      connect("remove-tag", __callback)
    end

  end
end

