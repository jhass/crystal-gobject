module Atk
  module Text
    def self.free_ranges(ranges)
      LibAtk.text_free_ranges(ranges)
      nil
    end

    def add_selection(start_offset, end_offset)
      __return_value = LibAtk.text_add_selection(@pointer.as(LibAtk::Text*), Int32.new(start_offset), Int32.new(end_offset))
      __return_value
    end

    def bounded_ranges(rect, coord_type : Atk::CoordType, x_clip_type : Atk::TextClipType, y_clip_type : Atk::TextClipType)
      __return_value = LibAtk.text_get_bounded_ranges(@pointer.as(LibAtk::Text*), rect.to_unsafe.as(LibAtk::TextRectangle*), coord_type, x_clip_type, y_clip_type)
      PointerIterator.new(__return_value) {|__item| Atk::TextRange.new(__item) }
    end

    def caret_offset
      __return_value = LibAtk.text_get_caret_offset(@pointer.as(LibAtk::Text*))
      __return_value
    end

    def character_at_offset(offset)
      __return_value = LibAtk.text_get_character_at_offset(@pointer.as(LibAtk::Text*), Int32.new(offset))
      __return_value
    end

    def character_count
      __return_value = LibAtk.text_get_character_count(@pointer.as(LibAtk::Text*))
      __return_value
    end

    def character_extents(offset, x, y, width, height, coords : Atk::CoordType)
      LibAtk.text_get_character_extents(@pointer.as(LibAtk::Text*), Int32.new(offset), x, y, width, height, coords)
      nil
    end

    def default_attributes
      __return_value = LibAtk.text_get_default_attributes(@pointer.as(LibAtk::Text*))
      GLib::SListIterator(Void*, Void**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def n_selections
      __return_value = LibAtk.text_get_n_selections(@pointer.as(LibAtk::Text*))
      __return_value
    end

    def offset_at_point(x, y, coords : Atk::CoordType)
      __return_value = LibAtk.text_get_offset_at_point(@pointer.as(LibAtk::Text*), Int32.new(x), Int32.new(y), coords)
      __return_value
    end

    def range_extents(start_offset, end_offset, coord_type : Atk::CoordType, rect)
      LibAtk.text_get_range_extents(@pointer.as(LibAtk::Text*), Int32.new(start_offset), Int32.new(end_offset), coord_type, rect)
      nil
    end

    def run_attributes(offset, start_offset, end_offset)
      __return_value = LibAtk.text_get_run_attributes(@pointer.as(LibAtk::Text*), Int32.new(offset), start_offset, end_offset)
      GLib::SListIterator(Void*, Void**).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def selection(selection_num, start_offset, end_offset)
      __return_value = LibAtk.text_get_selection(@pointer.as(LibAtk::Text*), Int32.new(selection_num), start_offset, end_offset)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def string_at_offset(offset, granularity : Atk::TextGranularity, start_offset, end_offset)
      __return_value = LibAtk.text_get_string_at_offset(@pointer.as(LibAtk::Text*), Int32.new(offset), granularity, start_offset, end_offset)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def text(start_offset, end_offset)
      __return_value = LibAtk.text_get_text(@pointer.as(LibAtk::Text*), Int32.new(start_offset), Int32.new(end_offset))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def text_after_offset(offset, boundary_type : Atk::TextBoundary, start_offset, end_offset)
      __return_value = LibAtk.text_get_text_after_offset(@pointer.as(LibAtk::Text*), Int32.new(offset), boundary_type, start_offset, end_offset)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def text_at_offset(offset, boundary_type : Atk::TextBoundary, start_offset, end_offset)
      __return_value = LibAtk.text_get_text_at_offset(@pointer.as(LibAtk::Text*), Int32.new(offset), boundary_type, start_offset, end_offset)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def text_before_offset(offset, boundary_type : Atk::TextBoundary, start_offset, end_offset)
      __return_value = LibAtk.text_get_text_before_offset(@pointer.as(LibAtk::Text*), Int32.new(offset), boundary_type, start_offset, end_offset)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def remove_selection(selection_num)
      __return_value = LibAtk.text_remove_selection(@pointer.as(LibAtk::Text*), Int32.new(selection_num))
      __return_value
    end

    def caret_offset=(offset)
      __return_value = LibAtk.text_set_caret_offset(@pointer.as(LibAtk::Text*), Int32.new(offset))
      __return_value
    end

    def set_selection(selection_num, start_offset, end_offset)
      __return_value = LibAtk.text_set_selection(@pointer.as(LibAtk::Text*), Int32.new(selection_num), Int32.new(start_offset), Int32.new(end_offset))
      __return_value
    end

    alias TextAttributesChangedSignal = Text ->
    def on_text_attributes_changed(&__block : TextAttributesChangedSignal)
      __callback = ->(_arg0 : LibAtk::Text*) {
       __return_value = __block.call(Text.new(_arg0))
       __return_value
      }
      connect("text-attributes-changed", __callback)
    end

    alias TextCaretMovedSignal = Text, Int32 ->
    def on_text_caret_moved(&__block : TextCaretMovedSignal)
      __callback = ->(_arg0 : LibAtk::Text*, _arg1 : LibAtk::Int32*) {
       __return_value = __block.call(Text.new(_arg0), _arg1)
       __return_value
      }
      connect("text-caret-moved", __callback)
    end

    alias TextChangedSignal = Text, Int32, Int32 ->
    def on_text_changed(&__block : TextChangedSignal)
      __callback = ->(_arg0 : LibAtk::Text*, _arg1 : LibAtk::Int32*, _arg2 : LibAtk::Int32*) {
       __return_value = __block.call(Text.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("text-changed", __callback)
    end

    alias TextInsertSignal = Text, Int32, Int32, String ->
    def on_text_insert(&__block : TextInsertSignal)
      __callback = ->(_arg0 : LibAtk::Text*, _arg1 : LibAtk::Int32*, _arg2 : LibAtk::Int32*, _arg3 : LibAtk::UInt8**) {
       __return_value = __block.call(Text.new(_arg0), _arg1, _arg2, (raise "Expected string but got null" unless _arg3; ::String.new(_arg3)))
       __return_value
      }
      connect("text-insert", __callback)
    end

    alias TextRemoveSignal = Text, Int32, Int32, String ->
    def on_text_remove(&__block : TextRemoveSignal)
      __callback = ->(_arg0 : LibAtk::Text*, _arg1 : LibAtk::Int32*, _arg2 : LibAtk::Int32*, _arg3 : LibAtk::UInt8**) {
       __return_value = __block.call(Text.new(_arg0), _arg1, _arg2, (raise "Expected string but got null" unless _arg3; ::String.new(_arg3)))
       __return_value
      }
      connect("text-remove", __callback)
    end

    alias TextSelectionChangedSignal = Text ->
    def on_text_selection_changed(&__block : TextSelectionChangedSignal)
      __callback = ->(_arg0 : LibAtk::Text*) {
       __return_value = __block.call(Text.new(_arg0))
       __return_value
      }
      connect("text-selection-changed", __callback)
    end

  end
end

