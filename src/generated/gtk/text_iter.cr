module Gtk
  class TextIter
    include GObject::WrappedType

    def initialize(@gtk_text_iter)
    end

    def to_unsafe
      @gtk_text_iter.not_nil!
    end

    def assign(other)
      __return_value = LibGtk.text_iter_assign((to_unsafe as LibGtk::TextIter*), (other.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def backward_char
      __return_value = LibGtk.text_iter_backward_char((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def backward_chars(count)
      __return_value = LibGtk.text_iter_backward_chars((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_cursor_position
      __return_value = LibGtk.text_iter_backward_cursor_position((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def backward_cursor_positions(count)
      __return_value = LibGtk.text_iter_backward_cursor_positions((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_find_char(pred : LibGtk::TextCharPredicate, user_data, limit)
      __return_value = LibGtk.text_iter_backward_find_char((to_unsafe as LibGtk::TextIter*), pred, user_data, limit && (limit.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def backward_line
      __return_value = LibGtk.text_iter_backward_line((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def backward_lines(count)
      __return_value = LibGtk.text_iter_backward_lines((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_search(str, flags, match_start, match_end, limit)
      __return_value = LibGtk.text_iter_backward_search((to_unsafe as LibGtk::TextIter*), str, flags, match_start, match_end, limit && (limit.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def backward_sentence_start
      __return_value = LibGtk.text_iter_backward_sentence_start((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def backward_sentence_starts(count)
      __return_value = LibGtk.text_iter_backward_sentence_starts((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_to_tag_toggle(tag)
      __return_value = LibGtk.text_iter_backward_to_tag_toggle((to_unsafe as LibGtk::TextIter*), tag && (tag.to_unsafe as LibGtk::TextTag*))
      __return_value
    end

    def backward_visible_cursor_position
      __return_value = LibGtk.text_iter_backward_visible_cursor_position((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def backward_visible_cursor_positions(count)
      __return_value = LibGtk.text_iter_backward_visible_cursor_positions((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_visible_line
      __return_value = LibGtk.text_iter_backward_visible_line((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def backward_visible_lines(count)
      __return_value = LibGtk.text_iter_backward_visible_lines((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_visible_word_start
      __return_value = LibGtk.text_iter_backward_visible_word_start((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def backward_visible_word_starts(count)
      __return_value = LibGtk.text_iter_backward_visible_word_starts((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def backward_word_start
      __return_value = LibGtk.text_iter_backward_word_start((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def backward_word_starts(count)
      __return_value = LibGtk.text_iter_backward_word_starts((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def begins_tag(tag)
      __return_value = LibGtk.text_iter_begins_tag((to_unsafe as LibGtk::TextIter*), tag && (tag.to_unsafe as LibGtk::TextTag*))
      __return_value
    end

    def can_insert(default_editability)
      __return_value = LibGtk.text_iter_can_insert((to_unsafe as LibGtk::TextIter*), default_editability)
      __return_value
    end

    def compare(rhs)
      __return_value = LibGtk.text_iter_compare((to_unsafe as LibGtk::TextIter*), (rhs.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def copy
      __return_value = LibGtk.text_iter_copy((to_unsafe as LibGtk::TextIter*))
      Gtk::TextIter.new(__return_value)
    end

    def editable(default_setting)
      __return_value = LibGtk.text_iter_editable((to_unsafe as LibGtk::TextIter*), default_setting)
      __return_value
    end

    def ends_line
      __return_value = LibGtk.text_iter_ends_line((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def ends_sentence
      __return_value = LibGtk.text_iter_ends_sentence((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def ends_tag(tag)
      __return_value = LibGtk.text_iter_ends_tag((to_unsafe as LibGtk::TextIter*), tag && (tag.to_unsafe as LibGtk::TextTag*))
      __return_value
    end

    def ends_word
      __return_value = LibGtk.text_iter_ends_word((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def equal(rhs)
      __return_value = LibGtk.text_iter_equal((to_unsafe as LibGtk::TextIter*), (rhs.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_char
      __return_value = LibGtk.text_iter_forward_char((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_chars(count)
      __return_value = LibGtk.text_iter_forward_chars((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_cursor_position
      __return_value = LibGtk.text_iter_forward_cursor_position((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_cursor_positions(count)
      __return_value = LibGtk.text_iter_forward_cursor_positions((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_find_char(pred : LibGtk::TextCharPredicate, user_data, limit)
      __return_value = LibGtk.text_iter_forward_find_char((to_unsafe as LibGtk::TextIter*), pred, user_data, limit && (limit.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_line
      __return_value = LibGtk.text_iter_forward_line((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_lines(count)
      __return_value = LibGtk.text_iter_forward_lines((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_search(str, flags, match_start, match_end, limit)
      __return_value = LibGtk.text_iter_forward_search((to_unsafe as LibGtk::TextIter*), str, flags, match_start, match_end, limit && (limit.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_sentence_end
      __return_value = LibGtk.text_iter_forward_sentence_end((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_sentence_ends(count)
      __return_value = LibGtk.text_iter_forward_sentence_ends((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_to_end
      __return_value = LibGtk.text_iter_forward_to_end((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_to_line_end
      __return_value = LibGtk.text_iter_forward_to_line_end((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_to_tag_toggle(tag)
      __return_value = LibGtk.text_iter_forward_to_tag_toggle((to_unsafe as LibGtk::TextIter*), tag && (tag.to_unsafe as LibGtk::TextTag*))
      __return_value
    end

    def forward_visible_cursor_position
      __return_value = LibGtk.text_iter_forward_visible_cursor_position((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_visible_cursor_positions(count)
      __return_value = LibGtk.text_iter_forward_visible_cursor_positions((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_visible_line
      __return_value = LibGtk.text_iter_forward_visible_line((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_visible_lines(count)
      __return_value = LibGtk.text_iter_forward_visible_lines((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_visible_word_end
      __return_value = LibGtk.text_iter_forward_visible_word_end((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_visible_word_ends(count)
      __return_value = LibGtk.text_iter_forward_visible_word_ends((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def forward_word_end
      __return_value = LibGtk.text_iter_forward_word_end((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_word_ends(count)
      __return_value = LibGtk.text_iter_forward_word_ends((to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def free
      __return_value = LibGtk.text_iter_free((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def attributes(values)
      __return_value = LibGtk.text_iter_get_attributes((to_unsafe as LibGtk::TextIter*), values)
      __return_value
    end

    def buffer
      __return_value = LibGtk.text_iter_get_buffer((to_unsafe as LibGtk::TextIter*))
      Gtk::TextBuffer.new(__return_value)
    end

    def bytes_in_line
      __return_value = LibGtk.text_iter_get_bytes_in_line((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def char
      __return_value = LibGtk.text_iter_get_char((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def chars_in_line
      __return_value = LibGtk.text_iter_get_chars_in_line((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def child_anchor
      __return_value = LibGtk.text_iter_get_child_anchor((to_unsafe as LibGtk::TextIter*))
      Gtk::TextChildAnchor.new(__return_value)
    end

    def language
      __return_value = LibGtk.text_iter_get_language((to_unsafe as LibGtk::TextIter*))
      Pango::Language.new(__return_value)
    end

    def line
      __return_value = LibGtk.text_iter_get_line((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def line_index
      __return_value = LibGtk.text_iter_get_line_index((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def line_offset
      __return_value = LibGtk.text_iter_get_line_offset((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def marks
      __return_value = LibGtk.text_iter_get_marks((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def offset
      __return_value = LibGtk.text_iter_get_offset((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def pixbuf
      __return_value = LibGtk.text_iter_get_pixbuf((to_unsafe as LibGtk::TextIter*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def slice(end)
      __return_value = LibGtk.text_iter_get_slice((to_unsafe as LibGtk::TextIter*), (end.to_unsafe as LibGtk::TextIter*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def tags
      __return_value = LibGtk.text_iter_get_tags((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def text(end)
      __return_value = LibGtk.text_iter_get_text((to_unsafe as LibGtk::TextIter*), (end.to_unsafe as LibGtk::TextIter*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def toggled_tags(toggled_on)
      __return_value = LibGtk.text_iter_get_toggled_tags((to_unsafe as LibGtk::TextIter*), toggled_on)
      __return_value
    end

    def visible_line_index
      __return_value = LibGtk.text_iter_get_visible_line_index((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def visible_line_offset
      __return_value = LibGtk.text_iter_get_visible_line_offset((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def visible_slice(end)
      __return_value = LibGtk.text_iter_get_visible_slice((to_unsafe as LibGtk::TextIter*), (end.to_unsafe as LibGtk::TextIter*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def visible_text(end)
      __return_value = LibGtk.text_iter_get_visible_text((to_unsafe as LibGtk::TextIter*), (end.to_unsafe as LibGtk::TextIter*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def has_tag(tag)
      __return_value = LibGtk.text_iter_has_tag((to_unsafe as LibGtk::TextIter*), (tag.to_unsafe as LibGtk::TextTag*))
      __return_value
    end

    def in_range(start, end)
      __return_value = LibGtk.text_iter_in_range((to_unsafe as LibGtk::TextIter*), (start.to_unsafe as LibGtk::TextIter*), (end.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def inside_sentence
      __return_value = LibGtk.text_iter_inside_sentence((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def inside_word
      __return_value = LibGtk.text_iter_inside_word((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def cursor_position?
      __return_value = LibGtk.text_iter_is_cursor_position((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def end?
      __return_value = LibGtk.text_iter_is_end((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def start?
      __return_value = LibGtk.text_iter_is_start((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def order(second)
      __return_value = LibGtk.text_iter_order((to_unsafe as LibGtk::TextIter*), (second.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def line=(line_number)
      __return_value = LibGtk.text_iter_set_line((to_unsafe as LibGtk::TextIter*), Int32.new(line_number))
      __return_value
    end

    def line_index=(byte_on_line)
      __return_value = LibGtk.text_iter_set_line_index((to_unsafe as LibGtk::TextIter*), Int32.new(byte_on_line))
      __return_value
    end

    def line_offset=(char_on_line)
      __return_value = LibGtk.text_iter_set_line_offset((to_unsafe as LibGtk::TextIter*), Int32.new(char_on_line))
      __return_value
    end

    def offset=(char_offset)
      __return_value = LibGtk.text_iter_set_offset((to_unsafe as LibGtk::TextIter*), Int32.new(char_offset))
      __return_value
    end

    def visible_line_index=(byte_on_line)
      __return_value = LibGtk.text_iter_set_visible_line_index((to_unsafe as LibGtk::TextIter*), Int32.new(byte_on_line))
      __return_value
    end

    def visible_line_offset=(char_on_line)
      __return_value = LibGtk.text_iter_set_visible_line_offset((to_unsafe as LibGtk::TextIter*), Int32.new(char_on_line))
      __return_value
    end

    def starts_line
      __return_value = LibGtk.text_iter_starts_line((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def starts_sentence
      __return_value = LibGtk.text_iter_starts_sentence((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def starts_word
      __return_value = LibGtk.text_iter_starts_word((to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def toggles_tag(tag)
      __return_value = LibGtk.text_iter_toggles_tag((to_unsafe as LibGtk::TextIter*), tag && (tag.to_unsafe as LibGtk::TextTag*))
      __return_value
    end

  end
end

