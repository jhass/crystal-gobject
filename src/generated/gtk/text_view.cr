require "./container"

module Gtk
  class TextView < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::TextView*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TextView*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements Scrollable
    def accepts_tab
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "accepts_tab", gvalue)
      gvalue.boolean
    end

    def bottom_margin
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "bottom_margin", gvalue)
      gvalue
    end

    def buffer
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "buffer", gvalue)
      Gtk::TextBuffer.cast(gvalue.object)
    end

    def cursor_visible
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "cursor_visible", gvalue)
      gvalue.boolean
    end

    def editable
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "editable", gvalue)
      gvalue.boolean
    end

    def im_module
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "im_module", gvalue)
      gvalue.string
    end

    def indent
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "indent", gvalue)
      gvalue
    end

    def input_hints
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "input_hints", gvalue)
      gvalue.enum
    end

    def input_purpose
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "input_purpose", gvalue)
      gvalue.enum
    end

    def justification
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "justification", gvalue)
      gvalue.enum
    end

    def left_margin
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "left_margin", gvalue)
      gvalue
    end

    def monospace
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "monospace", gvalue)
      gvalue.boolean
    end

    def overwrite
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "overwrite", gvalue)
      gvalue.boolean
    end

    def pixels_above_lines
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixels_above_lines", gvalue)
      gvalue
    end

    def pixels_below_lines
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixels_below_lines", gvalue)
      gvalue
    end

    def pixels_inside_wrap
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "pixels_inside_wrap", gvalue)
      gvalue
    end

    def populate_all
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "populate_all", gvalue)
      gvalue.boolean
    end

    def right_margin
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "right_margin", gvalue)
      gvalue
    end

    def tabs
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "tabs", gvalue)
      Pango::TabArray.cast(gvalue.object)
    end

    def top_margin
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "top_margin", gvalue)
      gvalue
    end

    def wrap_mode
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "wrap_mode", gvalue)
      gvalue.enum
    end

    def self.new : self
      __return_value = LibGtk.text_view_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_buffer(buffer) : self
      __return_value = LibGtk.text_view_new_with_buffer(buffer.to_unsafe.as(LibGtk::TextBuffer*))
      cast Gtk::Widget.new(__return_value)
    end

    def add_child_at_anchor(child, anchor)
      LibGtk.text_view_add_child_at_anchor(@pointer.as(LibGtk::TextView*), child.to_unsafe.as(LibGtk::Widget*), anchor.to_unsafe.as(LibGtk::TextChildAnchor*))
      nil
    end

    def add_child_in_window(child, which_window : Gtk::TextWindowType, xpos, ypos)
      LibGtk.text_view_add_child_in_window(@pointer.as(LibGtk::TextView*), child.to_unsafe.as(LibGtk::Widget*), which_window, Int32.new(xpos), Int32.new(ypos))
      nil
    end

    def backward_display_line(iter)
      __return_value = LibGtk.text_view_backward_display_line(@pointer.as(LibGtk::TextView*), iter.to_unsafe.as(LibGtk::TextIter*))
      __return_value
    end

    def backward_display_line_start(iter)
      __return_value = LibGtk.text_view_backward_display_line_start(@pointer.as(LibGtk::TextView*), iter.to_unsafe.as(LibGtk::TextIter*))
      __return_value
    end

    def buffer_to_window_coords(win : Gtk::TextWindowType, buffer_x, buffer_y, window_x, window_y)
      LibGtk.text_view_buffer_to_window_coords(@pointer.as(LibGtk::TextView*), win, Int32.new(buffer_x), Int32.new(buffer_y), window_x, window_y)
      nil
    end

    def forward_display_line(iter)
      __return_value = LibGtk.text_view_forward_display_line(@pointer.as(LibGtk::TextView*), iter.to_unsafe.as(LibGtk::TextIter*))
      __return_value
    end

    def forward_display_line_end(iter)
      __return_value = LibGtk.text_view_forward_display_line_end(@pointer.as(LibGtk::TextView*), iter.to_unsafe.as(LibGtk::TextIter*))
      __return_value
    end

    def accepts_tab
      __return_value = LibGtk.text_view_get_accepts_tab(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def border_window_size(type : Gtk::TextWindowType)
      __return_value = LibGtk.text_view_get_border_window_size(@pointer.as(LibGtk::TextView*), type)
      __return_value
    end

    def bottom_margin
      __return_value = LibGtk.text_view_get_bottom_margin(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def buffer
      __return_value = LibGtk.text_view_get_buffer(@pointer.as(LibGtk::TextView*))
      Gtk::TextBuffer.new(__return_value)
    end

    def cursor_locations(iter, strong, weak)
      LibGtk.text_view_get_cursor_locations(@pointer.as(LibGtk::TextView*), iter ? iter.to_unsafe.as(LibGtk::TextIter*) : nil, strong, weak)
      nil
    end

    def cursor_visible
      __return_value = LibGtk.text_view_get_cursor_visible(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def default_attributes
      __return_value = LibGtk.text_view_get_default_attributes(@pointer.as(LibGtk::TextView*))
      Gtk::TextAttributes.new(__return_value)
    end

    def editable
      __return_value = LibGtk.text_view_get_editable(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def hadjustment
      __return_value = LibGtk.text_view_get_hadjustment(@pointer.as(LibGtk::TextView*))
      Gtk::Adjustment.new(__return_value)
    end

    def indent
      __return_value = LibGtk.text_view_get_indent(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def input_hints
      __return_value = LibGtk.text_view_get_input_hints(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def input_purpose
      __return_value = LibGtk.text_view_get_input_purpose(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def iter_at_location(iter, x, y)
      __return_value = LibGtk.text_view_get_iter_at_location(@pointer.as(LibGtk::TextView*), iter, Int32.new(x), Int32.new(y))
      __return_value
    end

    def iter_at_position(iter, trailing, x, y)
      __return_value = LibGtk.text_view_get_iter_at_position(@pointer.as(LibGtk::TextView*), iter, trailing, Int32.new(x), Int32.new(y))
      __return_value
    end

    def iter_location(iter, location)
      LibGtk.text_view_get_iter_location(@pointer.as(LibGtk::TextView*), iter.to_unsafe.as(LibGtk::TextIter*), location)
      nil
    end

    def justification
      __return_value = LibGtk.text_view_get_justification(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def left_margin
      __return_value = LibGtk.text_view_get_left_margin(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def line_at_y(target_iter, y, line_top)
      LibGtk.text_view_get_line_at_y(@pointer.as(LibGtk::TextView*), target_iter, Int32.new(y), line_top)
      nil
    end

    def line_yrange(iter, y, height)
      LibGtk.text_view_get_line_yrange(@pointer.as(LibGtk::TextView*), iter.to_unsafe.as(LibGtk::TextIter*), y, height)
      nil
    end

    def monospace
      __return_value = LibGtk.text_view_get_monospace(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def overwrite
      __return_value = LibGtk.text_view_get_overwrite(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def pixels_above_lines
      __return_value = LibGtk.text_view_get_pixels_above_lines(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def pixels_below_lines
      __return_value = LibGtk.text_view_get_pixels_below_lines(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def pixels_inside_wrap
      __return_value = LibGtk.text_view_get_pixels_inside_wrap(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def right_margin
      __return_value = LibGtk.text_view_get_right_margin(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def tabs
      __return_value = LibGtk.text_view_get_tabs(@pointer.as(LibGtk::TextView*))
      Pango::TabArray.new(__return_value) if __return_value
    end

    def top_margin
      __return_value = LibGtk.text_view_get_top_margin(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.text_view_get_vadjustment(@pointer.as(LibGtk::TextView*))
      Gtk::Adjustment.new(__return_value)
    end

    def visible_rect(visible_rect)
      LibGtk.text_view_get_visible_rect(@pointer.as(LibGtk::TextView*), visible_rect)
      nil
    end

    def window(win : Gtk::TextWindowType)
      __return_value = LibGtk.text_view_get_window(@pointer.as(LibGtk::TextView*), win)
      Gdk::Window.new(__return_value) if __return_value
    end

    def window_type(window)
      __return_value = LibGtk.text_view_get_window_type(@pointer.as(LibGtk::TextView*), window.to_unsafe.as(LibGdk::Window*))
      __return_value
    end

    def wrap_mode
      __return_value = LibGtk.text_view_get_wrap_mode(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def im_context_filter_keypress(event)
      __return_value = LibGtk.text_view_im_context_filter_keypress(@pointer.as(LibGtk::TextView*), event.to_unsafe.as(LibGdk::EventKey*))
      __return_value
    end

    def move_child(child, xpos, ypos)
      LibGtk.text_view_move_child(@pointer.as(LibGtk::TextView*), child.to_unsafe.as(LibGtk::Widget*), Int32.new(xpos), Int32.new(ypos))
      nil
    end

    def move_mark_onscreen(mark)
      __return_value = LibGtk.text_view_move_mark_onscreen(@pointer.as(LibGtk::TextView*), mark.to_unsafe.as(LibGtk::TextMark*))
      __return_value
    end

    def move_visually(iter, count)
      __return_value = LibGtk.text_view_move_visually(@pointer.as(LibGtk::TextView*), iter.to_unsafe.as(LibGtk::TextIter*), Int32.new(count))
      __return_value
    end

    def place_cursor_onscreen
      __return_value = LibGtk.text_view_place_cursor_onscreen(@pointer.as(LibGtk::TextView*))
      __return_value
    end

    def reset_cursor_blink
      LibGtk.text_view_reset_cursor_blink(@pointer.as(LibGtk::TextView*))
      nil
    end

    def reset_im_context
      LibGtk.text_view_reset_im_context(@pointer.as(LibGtk::TextView*))
      nil
    end

    def scroll_mark_onscreen(mark)
      LibGtk.text_view_scroll_mark_onscreen(@pointer.as(LibGtk::TextView*), mark.to_unsafe.as(LibGtk::TextMark*))
      nil
    end

    def scroll_to_iter(iter, within_margin, use_align, xalign, yalign)
      __return_value = LibGtk.text_view_scroll_to_iter(@pointer.as(LibGtk::TextView*), iter.to_unsafe.as(LibGtk::TextIter*), Float64.new(within_margin), use_align, Float64.new(xalign), Float64.new(yalign))
      __return_value
    end

    def scroll_to_mark(mark, within_margin, use_align, xalign, yalign)
      LibGtk.text_view_scroll_to_mark(@pointer.as(LibGtk::TextView*), mark.to_unsafe.as(LibGtk::TextMark*), Float64.new(within_margin), use_align, Float64.new(xalign), Float64.new(yalign))
      nil
    end

    def accepts_tab=(accepts_tab)
      LibGtk.text_view_set_accepts_tab(@pointer.as(LibGtk::TextView*), accepts_tab)
      nil
    end

    def set_border_window_size(type : Gtk::TextWindowType, size)
      LibGtk.text_view_set_border_window_size(@pointer.as(LibGtk::TextView*), type, Int32.new(size))
      nil
    end

    def bottom_margin=(bottom_margin)
      LibGtk.text_view_set_bottom_margin(@pointer.as(LibGtk::TextView*), Int32.new(bottom_margin))
      nil
    end

    def buffer=(buffer)
      LibGtk.text_view_set_buffer(@pointer.as(LibGtk::TextView*), buffer ? buffer.to_unsafe.as(LibGtk::TextBuffer*) : nil)
      nil
    end

    def cursor_visible=(setting)
      LibGtk.text_view_set_cursor_visible(@pointer.as(LibGtk::TextView*), setting)
      nil
    end

    def editable=(setting)
      LibGtk.text_view_set_editable(@pointer.as(LibGtk::TextView*), setting)
      nil
    end

    def indent=(indent)
      LibGtk.text_view_set_indent(@pointer.as(LibGtk::TextView*), Int32.new(indent))
      nil
    end

    def input_hints=(hints : Gtk::InputHints)
      LibGtk.text_view_set_input_hints(@pointer.as(LibGtk::TextView*), hints)
      nil
    end

    def input_purpose=(purpose : Gtk::InputPurpose)
      LibGtk.text_view_set_input_purpose(@pointer.as(LibGtk::TextView*), purpose)
      nil
    end

    def justification=(justification : Gtk::Justification)
      LibGtk.text_view_set_justification(@pointer.as(LibGtk::TextView*), justification)
      nil
    end

    def left_margin=(left_margin)
      LibGtk.text_view_set_left_margin(@pointer.as(LibGtk::TextView*), Int32.new(left_margin))
      nil
    end

    def monospace=(monospace)
      LibGtk.text_view_set_monospace(@pointer.as(LibGtk::TextView*), monospace)
      nil
    end

    def overwrite=(overwrite)
      LibGtk.text_view_set_overwrite(@pointer.as(LibGtk::TextView*), overwrite)
      nil
    end

    def pixels_above_lines=(pixels_above_lines)
      LibGtk.text_view_set_pixels_above_lines(@pointer.as(LibGtk::TextView*), Int32.new(pixels_above_lines))
      nil
    end

    def pixels_below_lines=(pixels_below_lines)
      LibGtk.text_view_set_pixels_below_lines(@pointer.as(LibGtk::TextView*), Int32.new(pixels_below_lines))
      nil
    end

    def pixels_inside_wrap=(pixels_inside_wrap)
      LibGtk.text_view_set_pixels_inside_wrap(@pointer.as(LibGtk::TextView*), Int32.new(pixels_inside_wrap))
      nil
    end

    def right_margin=(right_margin)
      LibGtk.text_view_set_right_margin(@pointer.as(LibGtk::TextView*), Int32.new(right_margin))
      nil
    end

    def tabs=(tabs)
      LibGtk.text_view_set_tabs(@pointer.as(LibGtk::TextView*), tabs.to_unsafe.as(LibPango::TabArray*))
      nil
    end

    def top_margin=(top_margin)
      LibGtk.text_view_set_top_margin(@pointer.as(LibGtk::TextView*), Int32.new(top_margin))
      nil
    end

    def wrap_mode=(wrap_mode : Gtk::WrapMode)
      LibGtk.text_view_set_wrap_mode(@pointer.as(LibGtk::TextView*), wrap_mode)
      nil
    end

    def starts_display_line(iter)
      __return_value = LibGtk.text_view_starts_display_line(@pointer.as(LibGtk::TextView*), iter.to_unsafe.as(LibGtk::TextIter*))
      __return_value
    end

    def window_to_buffer_coords(win : Gtk::TextWindowType, window_x, window_y, buffer_x, buffer_y)
      LibGtk.text_view_window_to_buffer_coords(@pointer.as(LibGtk::TextView*), win, Int32.new(window_x), Int32.new(window_y), buffer_x, buffer_y)
      nil
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

    alias InsertAtCursorSignal = TextView, String ->
    def on_insert_at_cursor(&__block : InsertAtCursorSignal)
      __callback = ->(_arg0 : LibGtk::TextView*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(TextView.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
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
      __callback = ->(_arg0 : LibGtk::TextView*, _arg1 : LibGtk::LibGtk::Widget**) {
       __return_value = __block.call(TextView.new(_arg0), Gtk::Widget.new(_arg1))
       __return_value
      }
      connect("populate-popup", __callback)
    end

    alias PreeditChangedSignal = TextView, String ->
    def on_preedit_changed(&__block : PreeditChangedSignal)
      __callback = ->(_arg0 : LibGtk::TextView*, _arg1 : LibGtk::UInt8**) {
       __return_value = __block.call(TextView.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
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

