require "./container"

module Gtk
  class TextView < Container
    def initialize(@gtk_text_view)
    end

    def to_unsafe
      @gtk_text_view.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Scrollable





















    def self.new_internal
      __return_value = LibGtk.text_view_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_buffer(buffer)
      __return_value = LibGtk.text_view_new_with_buffer((buffer.to_unsafe as LibGtk::TextBuffer*))
      Gtk::Widget.new(__return_value)
    end

    def add_child_at_anchor(child, anchor)
      __return_value = LibGtk.text_view_add_child_at_anchor((to_unsafe as LibGtk::TextView*), (child.to_unsafe as LibGtk::Widget*), (anchor.to_unsafe as LibGtk::TextChildAnchor*))
      __return_value
    end

    def add_child_in_window(child, which_window, xpos, ypos)
      __return_value = LibGtk.text_view_add_child_in_window((to_unsafe as LibGtk::TextView*), (child.to_unsafe as LibGtk::Widget*), which_window, Int32.new(xpos), Int32.new(ypos))
      __return_value
    end

    def backward_display_line(iter)
      __return_value = LibGtk.text_view_backward_display_line((to_unsafe as LibGtk::TextView*), (iter.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def backward_display_line_start(iter)
      __return_value = LibGtk.text_view_backward_display_line_start((to_unsafe as LibGtk::TextView*), (iter.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def buffer_to_window_coords(win, buffer_x, buffer_y, window_x, window_y)
      __return_value = LibGtk.text_view_buffer_to_window_coords((to_unsafe as LibGtk::TextView*), win, Int32.new(buffer_x), Int32.new(buffer_y), Int32.new(window_x), Int32.new(window_y))
      __return_value
    end

    def forward_display_line(iter)
      __return_value = LibGtk.text_view_forward_display_line((to_unsafe as LibGtk::TextView*), (iter.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def forward_display_line_end(iter)
      __return_value = LibGtk.text_view_forward_display_line_end((to_unsafe as LibGtk::TextView*), (iter.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def accepts_tab
      __return_value = LibGtk.text_view_get_accepts_tab((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def border_window_size(type)
      __return_value = LibGtk.text_view_get_border_window_size((to_unsafe as LibGtk::TextView*), type)
      __return_value
    end

    def bottom_margin
      __return_value = LibGtk.text_view_get_bottom_margin((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def buffer
      __return_value = LibGtk.text_view_get_buffer((to_unsafe as LibGtk::TextView*))
      Gtk::TextBuffer.new(__return_value)
    end

    def cursor_locations(iter, strong, weak)
      __return_value = LibGtk.text_view_get_cursor_locations((to_unsafe as LibGtk::TextView*), iter && (iter.to_unsafe as LibGtk::TextIter*), strong, weak)
      __return_value
    end

    def cursor_visible
      __return_value = LibGtk.text_view_get_cursor_visible((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def default_attributes
      __return_value = LibGtk.text_view_get_default_attributes((to_unsafe as LibGtk::TextView*))
      Gtk::TextAttributes.new(__return_value)
    end

    def editable
      __return_value = LibGtk.text_view_get_editable((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def hadjustment
      __return_value = LibGtk.text_view_get_hadjustment((to_unsafe as LibGtk::TextView*))
      Gtk::Adjustment.new(__return_value)
    end

    def indent
      __return_value = LibGtk.text_view_get_indent((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def input_hints
      __return_value = LibGtk.text_view_get_input_hints((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def input_purpose
      __return_value = LibGtk.text_view_get_input_purpose((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def iter_at_location(iter, x, y)
      __return_value = LibGtk.text_view_get_iter_at_location((to_unsafe as LibGtk::TextView*), iter, Int32.new(x), Int32.new(y))
      __return_value
    end

    def iter_at_position(iter, trailing, x, y)
      __return_value = LibGtk.text_view_get_iter_at_position((to_unsafe as LibGtk::TextView*), iter, Int32.new(trailing), Int32.new(x), Int32.new(y))
      __return_value
    end

    def iter_location(iter, location)
      __return_value = LibGtk.text_view_get_iter_location((to_unsafe as LibGtk::TextView*), (iter.to_unsafe as LibGtk::TextIter*), location)
      __return_value
    end

    def justification
      __return_value = LibGtk.text_view_get_justification((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def left_margin
      __return_value = LibGtk.text_view_get_left_margin((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def line_at_y(target_iter, y, line_top)
      __return_value = LibGtk.text_view_get_line_at_y((to_unsafe as LibGtk::TextView*), target_iter, Int32.new(y), Int32.new(line_top))
      __return_value
    end

    def line_yrange(iter, y, height)
      __return_value = LibGtk.text_view_get_line_yrange((to_unsafe as LibGtk::TextView*), (iter.to_unsafe as LibGtk::TextIter*), Int32.new(y), Int32.new(height))
      __return_value
    end

    def monospace
      __return_value = LibGtk.text_view_get_monospace((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def overwrite
      __return_value = LibGtk.text_view_get_overwrite((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def pixels_above_lines
      __return_value = LibGtk.text_view_get_pixels_above_lines((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def pixels_below_lines
      __return_value = LibGtk.text_view_get_pixels_below_lines((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def pixels_inside_wrap
      __return_value = LibGtk.text_view_get_pixels_inside_wrap((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def right_margin
      __return_value = LibGtk.text_view_get_right_margin((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def tabs
      __return_value = LibGtk.text_view_get_tabs((to_unsafe as LibGtk::TextView*))
      Pango::TabArray.new(__return_value)
    end

    def top_margin
      __return_value = LibGtk.text_view_get_top_margin((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.text_view_get_vadjustment((to_unsafe as LibGtk::TextView*))
      Gtk::Adjustment.new(__return_value)
    end

    def visible_rect(visible_rect)
      __return_value = LibGtk.text_view_get_visible_rect((to_unsafe as LibGtk::TextView*), visible_rect)
      __return_value
    end

    def window(win)
      __return_value = LibGtk.text_view_get_window((to_unsafe as LibGtk::TextView*), win)
      Gdk::Window.new(__return_value)
    end

    def window_type(window)
      __return_value = LibGtk.text_view_get_window_type((to_unsafe as LibGtk::TextView*), (window.to_unsafe as LibGdk::Window*))
      __return_value
    end

    def wrap_mode
      __return_value = LibGtk.text_view_get_wrap_mode((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def im_context_filter_keypress(event)
      __return_value = LibGtk.text_view_im_context_filter_keypress((to_unsafe as LibGtk::TextView*), (event.to_unsafe as LibGdk::EventKey*))
      __return_value
    end

    def move_child(child, xpos, ypos)
      __return_value = LibGtk.text_view_move_child((to_unsafe as LibGtk::TextView*), (child.to_unsafe as LibGtk::Widget*), Int32.new(xpos), Int32.new(ypos))
      __return_value
    end

    def move_mark_onscreen(mark)
      __return_value = LibGtk.text_view_move_mark_onscreen((to_unsafe as LibGtk::TextView*), (mark.to_unsafe as LibGtk::TextMark*))
      __return_value
    end

    def move_visually(iter, count)
      __return_value = LibGtk.text_view_move_visually((to_unsafe as LibGtk::TextView*), (iter.to_unsafe as LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def place_cursor_onscreen
      __return_value = LibGtk.text_view_place_cursor_onscreen((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def reset_im_context
      __return_value = LibGtk.text_view_reset_im_context((to_unsafe as LibGtk::TextView*))
      __return_value
    end

    def scroll_mark_onscreen(mark)
      __return_value = LibGtk.text_view_scroll_mark_onscreen((to_unsafe as LibGtk::TextView*), (mark.to_unsafe as LibGtk::TextMark*))
      __return_value
    end

    def scroll_to_iter(iter, within_margin, use_align, xalign, yalign)
      __return_value = LibGtk.text_view_scroll_to_iter((to_unsafe as LibGtk::TextView*), (iter.to_unsafe as LibGtk::TextIter*), Float64.new(within_margin), use_align, Float64.new(xalign), Float64.new(yalign))
      __return_value
    end

    def scroll_to_mark(mark, within_margin, use_align, xalign, yalign)
      __return_value = LibGtk.text_view_scroll_to_mark((to_unsafe as LibGtk::TextView*), (mark.to_unsafe as LibGtk::TextMark*), Float64.new(within_margin), use_align, Float64.new(xalign), Float64.new(yalign))
      __return_value
    end

    def accepts_tab=(accepts_tab)
      __return_value = LibGtk.text_view_set_accepts_tab((to_unsafe as LibGtk::TextView*), accepts_tab)
      __return_value
    end

    def set_border_window_size(type, size)
      __return_value = LibGtk.text_view_set_border_window_size((to_unsafe as LibGtk::TextView*), type, Int32.new(size))
      __return_value
    end

    def bottom_margin=(bottom_margin)
      __return_value = LibGtk.text_view_set_bottom_margin((to_unsafe as LibGtk::TextView*), Int32.new(bottom_margin))
      __return_value
    end

    def buffer=(buffer)
      __return_value = LibGtk.text_view_set_buffer((to_unsafe as LibGtk::TextView*), buffer && (buffer.to_unsafe as LibGtk::TextBuffer*))
      __return_value
    end

    def cursor_visible=(setting)
      __return_value = LibGtk.text_view_set_cursor_visible((to_unsafe as LibGtk::TextView*), setting)
      __return_value
    end

    def editable=(setting)
      __return_value = LibGtk.text_view_set_editable((to_unsafe as LibGtk::TextView*), setting)
      __return_value
    end

    def indent=(indent)
      __return_value = LibGtk.text_view_set_indent((to_unsafe as LibGtk::TextView*), Int32.new(indent))
      __return_value
    end

    def input_hints=(hints)
      __return_value = LibGtk.text_view_set_input_hints((to_unsafe as LibGtk::TextView*), hints)
      __return_value
    end

    def input_purpose=(purpose)
      __return_value = LibGtk.text_view_set_input_purpose((to_unsafe as LibGtk::TextView*), purpose)
      __return_value
    end

    def justification=(justification)
      __return_value = LibGtk.text_view_set_justification((to_unsafe as LibGtk::TextView*), justification)
      __return_value
    end

    def left_margin=(left_margin)
      __return_value = LibGtk.text_view_set_left_margin((to_unsafe as LibGtk::TextView*), Int32.new(left_margin))
      __return_value
    end

    def monospace=(monospace)
      __return_value = LibGtk.text_view_set_monospace((to_unsafe as LibGtk::TextView*), monospace)
      __return_value
    end

    def overwrite=(overwrite)
      __return_value = LibGtk.text_view_set_overwrite((to_unsafe as LibGtk::TextView*), overwrite)
      __return_value
    end

    def pixels_above_lines=(pixels_above_lines)
      __return_value = LibGtk.text_view_set_pixels_above_lines((to_unsafe as LibGtk::TextView*), Int32.new(pixels_above_lines))
      __return_value
    end

    def pixels_below_lines=(pixels_below_lines)
      __return_value = LibGtk.text_view_set_pixels_below_lines((to_unsafe as LibGtk::TextView*), Int32.new(pixels_below_lines))
      __return_value
    end

    def pixels_inside_wrap=(pixels_inside_wrap)
      __return_value = LibGtk.text_view_set_pixels_inside_wrap((to_unsafe as LibGtk::TextView*), Int32.new(pixels_inside_wrap))
      __return_value
    end

    def right_margin=(right_margin)
      __return_value = LibGtk.text_view_set_right_margin((to_unsafe as LibGtk::TextView*), Int32.new(right_margin))
      __return_value
    end

    def tabs=(tabs)
      __return_value = LibGtk.text_view_set_tabs((to_unsafe as LibGtk::TextView*), (tabs.to_unsafe as LibPango::TabArray*))
      __return_value
    end

    def top_margin=(top_margin)
      __return_value = LibGtk.text_view_set_top_margin((to_unsafe as LibGtk::TextView*), Int32.new(top_margin))
      __return_value
    end

    def wrap_mode=(wrap_mode)
      __return_value = LibGtk.text_view_set_wrap_mode((to_unsafe as LibGtk::TextView*), wrap_mode)
      __return_value
    end

    def starts_display_line(iter)
      __return_value = LibGtk.text_view_starts_display_line((to_unsafe as LibGtk::TextView*), (iter.to_unsafe as LibGtk::TextIter*))
      __return_value
    end

    def window_to_buffer_coords(win, window_x, window_y, buffer_x, buffer_y)
      __return_value = LibGtk.text_view_window_to_buffer_coords((to_unsafe as LibGtk::TextView*), win, Int32.new(window_x), Int32.new(window_y), Int32.new(buffer_x), Int32.new(buffer_y))
      __return_value
    end

    alias BackspaceSignal = TextView -> 
    def on_backspace(&__block : BackspaceSignal)
      __callback = ->(_arg0 : LibGtk::TextView*) {
       __return_value = __block.call(TextView.new(_arg0))
       __return_value
      }
      connect("backspace", __callback)
    end

    alias CopyClipboardSignal = TextView -> 
    def on_copy_clipboard(&__block : CopyClipboardSignal)
      __callback = ->(_arg0 : LibGtk::TextView*) {
       __return_value = __block.call(TextView.new(_arg0))
       __return_value
      }
      connect("copy-clipboard", __callback)
    end

    alias CutClipboardSignal = TextView -> 
    def on_cut_clipboard(&__block : CutClipboardSignal)
      __callback = ->(_arg0 : LibGtk::TextView*) {
       __return_value = __block.call(TextView.new(_arg0))
       __return_value
      }
      connect("cut-clipboard", __callback)
    end

    alias DeleteFromCursorSignal = TextView, Gtk::DeleteType, Int32 -> 
    def on_delete_from_cursor(&__block : DeleteFromCursorSignal)
      __callback = ->(_arg0 : LibGtk::TextView*, _arg1 : LibGtk::LibGtk::DeleteType*, _arg2 : LibGtk::Int32*) {
       __return_value = __block.call(TextView.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("delete-from-cursor", __callback)
    end

    alias ExtendSelectionSignal = TextView, Gtk::TextExtendSelection, Gtk::TextIter, Gtk::TextIter, Gtk::TextIter -> Bool
    def on_extend_selection(&__block : ExtendSelectionSignal)
      __callback = ->(_arg0 : LibGtk::TextView*, _arg1 : LibGtk::LibGtk::TextExtendSelection*, _arg2 : LibGtk::LibGtk::TextIter*, _arg3 : LibGtk::LibGtk::TextIter*, _arg4 : LibGtk::LibGtk::TextIter*) {
       __return_value = __block.call(TextView.new(_arg0), _arg1, Gtk::TextIter.new(_arg2), Gtk::TextIter.new(_arg3), Gtk::TextIter.new(_arg4))
       __return_value
      }
      connect("extend-selection", __callback)
    end

    alias InsertAtCursorSignal = TextView, UInt8 -> 
    def on_insert_at_cursor(&__block : InsertAtCursorSignal)
      __callback = ->(_arg0 : LibGtk::TextView*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(TextView.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)))
       __return_value
      }
      connect("insert-at-cursor", __callback)
    end

    alias MoveCursorSignal = TextView, Gtk::MovementStep, Int32, Bool -> 
    def on_move_cursor(&__block : MoveCursorSignal)
      __callback = ->(_arg0 : LibGtk::TextView*, _arg1 : LibGtk::LibGtk::MovementStep*, _arg2 : LibGtk::Int32*, _arg3 : LibGtk::Bool*) {
       __return_value = __block.call(TextView.new(_arg0), _arg1, _arg2, _arg3)
       __return_value
      }
      connect("move-cursor", __callback)
    end

    alias MoveViewportSignal = TextView, Gtk::ScrollStep, Int32 -> 
    def on_move_viewport(&__block : MoveViewportSignal)
      __callback = ->(_arg0 : LibGtk::TextView*, _arg1 : LibGtk::LibGtk::ScrollStep*, _arg2 : LibGtk::Int32*) {
       __return_value = __block.call(TextView.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("move-viewport", __callback)
    end

    alias PasteClipboardSignal = TextView -> 
    def on_paste_clipboard(&__block : PasteClipboardSignal)
      __callback = ->(_arg0 : LibGtk::TextView*) {
       __return_value = __block.call(TextView.new(_arg0))
       __return_value
      }
      connect("paste-clipboard", __callback)
    end

    alias PopulatePopupSignal = TextView, Gtk::Widget -> 
    def on_populate_popup(&__block : PopulatePopupSignal)
      __callback = ->(_arg0 : LibGtk::TextView*, _arg1 : LibGtk::LibGtk::Widget*) {
       __return_value = __block.call(TextView.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("populate-popup", __callback)
    end

    alias PreeditChangedSignal = TextView, UInt8 -> 
    def on_preedit_changed(&__block : PreeditChangedSignal)
      __callback = ->(_arg0 : LibGtk::TextView*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(TextView.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)))
       __return_value
      }
      connect("preedit-changed", __callback)
    end

    alias SelectAllSignal = TextView, Bool -> 
    def on_select_all(&__block : SelectAllSignal)
      __callback = ->(_arg0 : LibGtk::TextView*, _arg1 : LibGtk::Bool*) {
       __return_value = __block.call(TextView.new(_arg0), _arg1)
       __return_value
      }
      connect("select-all", __callback)
    end

    alias SetAnchorSignal = TextView -> 
    def on_set_anchor(&__block : SetAnchorSignal)
      __callback = ->(_arg0 : LibGtk::TextView*) {
       __return_value = __block.call(TextView.new(_arg0))
       __return_value
      }
      connect("set-anchor", __callback)
    end

    alias ToggleCursorVisibleSignal = TextView -> 
    def on_toggle_cursor_visible(&__block : ToggleCursorVisibleSignal)
      __callback = ->(_arg0 : LibGtk::TextView*) {
       __return_value = __block.call(TextView.new(_arg0))
       __return_value
      }
      connect("toggle-cursor-visible", __callback)
    end

    alias ToggleOverwriteSignal = TextView -> 
    def on_toggle_overwrite(&__block : ToggleOverwriteSignal)
      __callback = ->(_arg0 : LibGtk::TextView*) {
       __return_value = __block.call(TextView.new(_arg0))
       __return_value
      }
      connect("toggle-overwrite", __callback)
    end

  end
end

