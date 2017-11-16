module Gtk
  class TextIter
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(80, 0u8)
      super(ptr.as(LibGtk::TextIter*))
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::TextIter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextIter*)
    end

    def assign(other)
      LibGtk.text_iter_assign(@pointer.as(LibGtk::TextIter*), other.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def backward_char
      __return_value = LibGtk.text_iter_backward_char(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def backward_chars(count)
      __return_value = LibGtk.text_iter_backward_chars(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_cursor_position
      __return_value = LibGtk.text_iter_backward_cursor_position(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def backward_cursor_positions(count)
      __return_value = LibGtk.text_iter_backward_cursor_positions(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_find_char(pred, user_data, limit)
      __return_value = LibGtk.text_iter_backward_find_char(@pointer.as(LibGtk::TextIter*), pred, user_data ? user_data : nil, limit ? limit.to_unsafe.as(LibGtk::TextIter*) : nil)
      __return_value
    end

    def backward_line
      __return_value = LibGtk.text_iter_backward_line(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def backward_lines(count)
      __return_value = LibGtk.text_iter_backward_lines(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_search(str, flags : Gtk::TextSearchFlags, match_start, match_end, limit)
      __return_value = LibGtk.text_iter_backward_search(@pointer.as(LibGtk::TextIter*), str.to_unsafe, flags, match_start, match_end, limit ? limit.to_unsafe.as(LibGtk::TextIter*) : nil)
      __return_value
    end

    def backward_sentence_start
      __return_value = LibGtk.text_iter_backward_sentence_start(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def backward_sentence_starts(count)
      __return_value = LibGtk.text_iter_backward_sentence_starts(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_to_tag_toggle(tag)
      __return_value = LibGtk.text_iter_backward_to_tag_toggle(@pointer.as(LibGtk::TextIter*), tag ? tag.to_unsafe.as(LibGtk::TextTag*) : nil)
      __return_value
    end

    def backward_visible_cursor_position
      __return_value = LibGtk.text_iter_backward_visible_cursor_position(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def backward_visible_cursor_positions(count)
      __return_value = LibGtk.text_iter_backward_visible_cursor_positions(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_visible_line
      __return_value = LibGtk.text_iter_backward_visible_line(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def backward_visible_lines(count)
      __return_value = LibGtk.text_iter_backward_visible_lines(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_visible_word_start
      __return_value = LibGtk.text_iter_backward_visible_word_start(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def backward_visible_word_starts(count)
      __return_value = LibGtk.text_iter_backward_visible_word_starts(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_word_start
      __return_value = LibGtk.text_iter_backward_word_start(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def backward_word_starts(count)
      __return_value = LibGtk.text_iter_backward_word_starts(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def begins_tag(tag)
      __return_value = LibGtk.text_iter_begins_tag(@pointer.as(LibGtk::TextIter*), tag ? tag.to_unsafe.as(LibGtk::TextTag*) : nil)
      __return_value
    end

    def can_insert(default_editability)
      __return_value = LibGtk.text_iter_can_insert(@pointer.as(LibGtk::TextIter*), default_editability)
      __return_value
    end

    def compare(rhs)
      __return_value = LibGtk.text_iter_compare(@pointer.as(LibGtk::TextIter*), rhs.to_unsafe.as(LibGtk::TextIter*))
      __return_value
    end

    def copy
      __return_value = LibGtk.text_iter_copy(@pointer.as(LibGtk::TextIter*))
      Gtk::TextIter.new(__return_value)
    end

    def editable(default_setting)
      __return_value = LibGtk.text_iter_editable(@pointer.as(LibGtk::TextIter*), default_setting)
      __return_value
    end

    def ends_line
      __return_value = LibGtk.text_iter_ends_line(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def ends_sentence
      __return_value = LibGtk.text_iter_ends_sentence(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def ends_tag(tag)
      __return_value = LibGtk.text_iter_ends_tag(@pointer.as(LibGtk::TextIter*), tag ? tag.to_unsafe.as(LibGtk::TextTag*) : nil)
      __return_value
    end

    def ends_word
      __return_value = LibGtk.text_iter_ends_word(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def equal(rhs)
      __return_value = LibGtk.text_iter_equal(@pointer.as(LibGtk::TextIter*), rhs.to_unsafe.as(LibGtk::TextIter*))
      __return_value
    end

    def forward_char
      __return_value = LibGtk.text_iter_forward_char(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def forward_chars(count)
      __return_value = LibGtk.text_iter_forward_chars(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_cursor_position
      __return_value = LibGtk.text_iter_forward_cursor_position(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def forward_cursor_positions(count)
      __return_value = LibGtk.text_iter_forward_cursor_positions(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_find_char(pred, user_data, limit)
      __return_value = LibGtk.text_iter_forward_find_char(@pointer.as(LibGtk::TextIter*), pred, user_data ? user_data : nil, limit ? limit.to_unsafe.as(LibGtk::TextIter*) : nil)
      __return_value
    end

    def forward_line
      __return_value = LibGtk.text_iter_forward_line(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def forward_lines(count)
      __return_value = LibGtk.text_iter_forward_lines(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_search(str, flags : Gtk::TextSearchFlags, match_start, match_end, limit)
      __return_value = LibGtk.text_iter_forward_search(@pointer.as(LibGtk::TextIter*), str.to_unsafe, flags, match_start, match_end, limit ? limit.to_unsafe.as(LibGtk::TextIter*) : nil)
      __return_value
    end

    def forward_sentence_end
      __return_value = LibGtk.text_iter_forward_sentence_end(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def forward_sentence_ends(count)
      __return_value = LibGtk.text_iter_forward_sentence_ends(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_to_end
      LibGtk.text_iter_forward_to_end(@pointer.as(LibGtk::TextIter*))
      nil
    end

    def forward_to_line_end
      __return_value = LibGtk.text_iter_forward_to_line_end(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def forward_to_tag_toggle(tag)
      __return_value = LibGtk.text_iter_forward_to_tag_toggle(@pointer.as(LibGtk::TextIter*), tag ? tag.to_unsafe.as(LibGtk::TextTag*) : nil)
      __return_value
    end

    def forward_visible_cursor_position
      __return_value = LibGtk.text_iter_forward_visible_cursor_position(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def forward_visible_cursor_positions(count)
      __return_value = LibGtk.text_iter_forward_visible_cursor_positions(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_visible_line
      __return_value = LibGtk.text_iter_forward_visible_line(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def forward_visible_lines(count)
      __return_value = LibGtk.text_iter_forward_visible_lines(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_visible_word_end
      __return_value = LibGtk.text_iter_forward_visible_word_end(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def forward_visible_word_ends(count)
      __return_value = LibGtk.text_iter_forward_visible_word_ends(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_word_end
      __return_value = LibGtk.text_iter_forward_word_end(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def forward_word_ends(count)
      __return_value = LibGtk.text_iter_forward_word_ends(@pointer.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def free
      LibGtk.text_iter_free(@pointer.as(LibGtk::TextIter*))
      nil
    end

    def attributes(values)
      __return_value = LibGtk.text_iter_get_attributes(@pointer.as(LibGtk::TextIter*), values)
      __return_value
    end

    def buffer
      __return_value = LibGtk.text_iter_get_buffer(@pointer.as(LibGtk::TextIter*))
      Gtk::TextBuffer.new(__return_value)
    end

    def bytes_in_line
      __return_value = LibGtk.text_iter_get_bytes_in_line(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def char
      __return_value = LibGtk.text_iter_get_char(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def chars_in_line
      __return_value = LibGtk.text_iter_get_chars_in_line(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def child_anchor
      __return_value = LibGtk.text_iter_get_child_anchor(@pointer.as(LibGtk::TextIter*))
      Gtk::TextChildAnchor.new(__return_value)
    end

    def language
      __return_value = LibGtk.text_iter_get_language(@pointer.as(LibGtk::TextIter*))
      Pango::Language.new(__return_value)
    end

    def line
      __return_value = LibGtk.text_iter_get_line(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def line_index
      __return_value = LibGtk.text_iter_get_line_index(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def line_offset
      __return_value = LibGtk.text_iter_get_line_offset(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def marks
      __return_value = LibGtk.text_iter_get_marks(@pointer.as(LibGtk::TextIter*))
      GLib::SListIterator(Gtk::TextMark, LibGtk::TextMark*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def offset
      __return_value = LibGtk.text_iter_get_offset(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def pixbuf
      __return_value = LibGtk.text_iter_get_pixbuf(@pointer.as(LibGtk::TextIter*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def slice(end)
      __return_value = LibGtk.text_iter_get_slice(@pointer.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def tags
      __return_value = LibGtk.text_iter_get_tags(@pointer.as(LibGtk::TextIter*))
      GLib::SListIterator(Gtk::TextTag, LibGtk::TextTag*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def text(end)
      __return_value = LibGtk.text_iter_get_text(@pointer.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def toggled_tags(toggled_on)
      __return_value = LibGtk.text_iter_get_toggled_tags(@pointer.as(LibGtk::TextIter*), toggled_on)
      GLib::SListIterator(Gtk::TextTag, LibGtk::TextTag*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def visible_line_index
      __return_value = LibGtk.text_iter_get_visible_line_index(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def visible_line_offset
      __return_value = LibGtk.text_iter_get_visible_line_offset(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def visible_slice(end)
      __return_value = LibGtk.text_iter_get_visible_slice(@pointer.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def visible_text(end)
      __return_value = LibGtk.text_iter_get_visible_text(@pointer.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def has_tag(tag)
      __return_value = LibGtk.text_iter_has_tag(@pointer.as(LibGtk::TextIter*), tag.to_unsafe.as(LibGtk::TextTag*))
      __return_value
    end

    def in_range(start, end)
      __return_value = LibGtk.text_iter_in_range(@pointer.as(LibGtk::TextIter*), start.to_unsafe.as(LibGtk::TextIter*), end.to_unsafe.as(LibGtk::TextIter*))
      __return_value
    end

    def inside_sentence
      __return_value = LibGtk.text_iter_inside_sentence(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def inside_word
      __return_value = LibGtk.text_iter_inside_word(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def cursor_position?
      __return_value = LibGtk.text_iter_is_cursor_position(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def end?
      __return_value = LibGtk.text_iter_is_end(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def start?
      __return_value = LibGtk.text_iter_is_start(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def order(second)
      LibGtk.text_iter_order(@pointer.as(LibGtk::TextIter*), second.to_unsafe.as(LibGtk::TextIter*))
      nil
    end

    def line=(line_number)
      LibGtk.text_iter_set_line(@pointer.as(LibGtk::TextIter*), Int32.new(line_number))
      nil
    end

    def line_index=(byte_on_line)
      LibGtk.text_iter_set_line_index(@pointer.as(LibGtk::TextIter*), Int32.new(byte_on_line))
      nil
    end

    def line_offset=(char_on_line)
      LibGtk.text_iter_set_line_offset(@pointer.as(LibGtk::TextIter*), Int32.new(char_on_line))
      nil
    end

    def offset=(char_offset)
      LibGtk.text_iter_set_offset(@pointer.as(LibGtk::TextIter*), Int32.new(char_offset))
      nil
    end

    def visible_line_index=(byte_on_line)
      LibGtk.text_iter_set_visible_line_index(@pointer.as(LibGtk::TextIter*), Int32.new(byte_on_line))
      nil
    end

    def visible_line_offset=(char_on_line)
      LibGtk.text_iter_set_visible_line_offset(@pointer.as(LibGtk::TextIter*), Int32.new(char_on_line))
      nil
    end

    def starts_line
      __return_value = LibGtk.text_iter_starts_line(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def starts_sentence
      __return_value = LibGtk.text_iter_starts_sentence(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def starts_tag(tag)
      __return_value = LibGtk.text_iter_starts_tag(@pointer.as(LibGtk::TextIter*), tag ? tag.to_unsafe.as(LibGtk::TextTag*) : nil)
      __return_value
    end

    def starts_word
      __return_value = LibGtk.text_iter_starts_word(@pointer.as(LibGtk::TextIter*))
      __return_value
    end

    def toggles_tag(tag)
      __return_value = LibGtk.text_iter_toggles_tag(@pointer.as(LibGtk::TextIter*), tag ? tag.to_unsafe.as(LibGtk::TextTag*) : nil)
      __return_value
    end

    def dummy1
      (to_unsafe.as(LibGtk::TextIter*).value.dummy1)
    end

    def dummy2
      (to_unsafe.as(LibGtk::TextIter*).value.dummy2)
    end

    def dummy3
      (to_unsafe.as(LibGtk::TextIter*).value.dummy3)
    end

    def dummy4
      (to_unsafe.as(LibGtk::TextIter*).value.dummy4)
    end

    def dummy5
      (to_unsafe.as(LibGtk::TextIter*).value.dummy5)
    end

    def dummy6
      (to_unsafe.as(LibGtk::TextIter*).value.dummy6)
    end

    def dummy7
      (to_unsafe.as(LibGtk::TextIter*).value.dummy7)
    end

    def dummy8
      (to_unsafe.as(LibGtk::TextIter*).value.dummy8)
    end

    def dummy9
      (to_unsafe.as(LibGtk::TextIter*).value.dummy9)
    end

    def dummy10
      (to_unsafe.as(LibGtk::TextIter*).value.dummy10)
    end

    def dummy11
      (to_unsafe.as(LibGtk::TextIter*).value.dummy11)
    end

    def dummy12
      (to_unsafe.as(LibGtk::TextIter*).value.dummy12)
    end

    def dummy13
      (to_unsafe.as(LibGtk::TextIter*).value.dummy13)
    end

    def dummy14
      (to_unsafe.as(LibGtk::TextIter*).value.dummy14)
    end

  end
end

