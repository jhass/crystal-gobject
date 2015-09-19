module Atk
  module Text
    def self.free_ranges(ranges)
      __return_value = LibAtk.text_free_ranges(ranges)
      __return_value
    end

    def add_selection(start_offset, end_offset)
      __return_value = LibAtk.text_add_selection((to_unsafe as LibAtk::Text*), Int32.new(start_offset), Int32.new(end_offset))
      __return_value
    end

    def bounded_ranges(rect, coord_type, x_clip_type, y_clip_type)
      __return_value = LibAtk.text_get_bounded_ranges((to_unsafe as LibAtk::Text*), (rect.to_unsafe as LibAtk::TextRectangle*), coord_type, x_clip_type, y_clip_type)
      PointerIterator.new(__return_value) {|__item_47| Atk::TextRange.new(__item_47) }
    end

    def caret_offset
      __return_value = LibAtk.text_get_caret_offset((to_unsafe as LibAtk::Text*))
      __return_value
    end

    def character_at_offset(offset)
      __return_value = LibAtk.text_get_character_at_offset((to_unsafe as LibAtk::Text*), Int32.new(offset))
      __return_value
    end

    def character_count
      __return_value = LibAtk.text_get_character_count((to_unsafe as LibAtk::Text*))
      __return_value
    end

    def character_extents(offset, x, y, width, height, coords)
      __return_value = LibAtk.text_get_character_extents((to_unsafe as LibAtk::Text*), Int32.new(offset), x, y, width, height, coords)
      __return_value
    end

    def default_attributes
      __return_value = LibAtk.text_get_default_attributes((to_unsafe as LibAtk::Text*))
      __return_value
    end

    def n_selections
      __return_value = LibAtk.text_get_n_selections((to_unsafe as LibAtk::Text*))
      __return_value
    end

    def offset_at_point(x, y, coords)
      __return_value = LibAtk.text_get_offset_at_point((to_unsafe as LibAtk::Text*), Int32.new(x), Int32.new(y), coords)
      __return_value
    end

    def range_extents(start_offset, end_offset, coord_type, rect)
      __return_value = LibAtk.text_get_range_extents((to_unsafe as LibAtk::Text*), Int32.new(start_offset), Int32.new(end_offset), coord_type, (rect.to_unsafe as LibAtk::TextRectangle*))
      __return_value
    end

    def run_attributes(offset, start_offset, end_offset)
      __return_value = LibAtk.text_get_run_attributes((to_unsafe as LibAtk::Text*), Int32.new(offset), Int32.new(start_offset), Int32.new(end_offset))
      __return_value
    end

    def selection(selection_num, start_offset, end_offset)
      __return_value = LibAtk.text_get_selection((to_unsafe as LibAtk::Text*), Int32.new(selection_num), Int32.new(start_offset), Int32.new(end_offset))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def string_at_offset(offset, granularity, start_offset, end_offset)
      __return_value = LibAtk.text_get_string_at_offset((to_unsafe as LibAtk::Text*), Int32.new(offset), granularity, Int32.new(start_offset), Int32.new(end_offset))
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

    def text(start_offset, end_offset)
      __return_value = LibAtk.text_get_text((to_unsafe as LibAtk::Text*), Int32.new(start_offset), Int32.new(end_offset))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def text_after_offset(offset, boundary_type, start_offset, end_offset)
      __return_value = LibAtk.text_get_text_after_offset((to_unsafe as LibAtk::Text*), Int32.new(offset), boundary_type, Int32.new(start_offset), Int32.new(end_offset))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def text_at_offset(offset, boundary_type, start_offset, end_offset)
      __return_value = LibAtk.text_get_text_at_offset((to_unsafe as LibAtk::Text*), Int32.new(offset), boundary_type, Int32.new(start_offset), Int32.new(end_offset))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def text_before_offset(offset, boundary_type, start_offset, end_offset)
      __return_value = LibAtk.text_get_text_before_offset((to_unsafe as LibAtk::Text*), Int32.new(offset), boundary_type, Int32.new(start_offset), Int32.new(end_offset))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def remove_selection(selection_num)
      __return_value = LibAtk.text_remove_selection((to_unsafe as LibAtk::Text*), Int32.new(selection_num))
      __return_value
    end

    def caret_offset=(offset)
      __return_value = LibAtk.text_set_caret_offset((to_unsafe as LibAtk::Text*), Int32.new(offset))
      __return_value
    end

    def set_selection(selection_num, start_offset, end_offset)
      __return_value = LibAtk.text_set_selection((to_unsafe as LibAtk::Text*), Int32.new(selection_num), Int32.new(start_offset), Int32.new(end_offset))
      __return_value
    end

  end
end

