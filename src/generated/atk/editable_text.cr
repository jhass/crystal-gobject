module Atk
  module EditableText
    def copy_text(start_pos, end_pos)
      __return_value = LibAtk.editable_text_copy_text((to_unsafe as LibAtk::EditableText*), Int32.new(start_pos), Int32.new(end_pos))
      __return_value
    end

    def cut_text(start_pos, end_pos)
      __return_value = LibAtk.editable_text_cut_text((to_unsafe as LibAtk::EditableText*), Int32.new(start_pos), Int32.new(end_pos))
      __return_value
    end

    def delete_text(start_pos, end_pos)
      __return_value = LibAtk.editable_text_delete_text((to_unsafe as LibAtk::EditableText*), Int32.new(start_pos), Int32.new(end_pos))
      __return_value
    end

    def insert_text(string, length, position)
      __return_value = LibAtk.editable_text_insert_text((to_unsafe as LibAtk::EditableText*), string, Int32.new(length), position)
      __return_value
    end

    def paste_text(position)
      __return_value = LibAtk.editable_text_paste_text((to_unsafe as LibAtk::EditableText*), Int32.new(position))
      __return_value
    end

    def set_run_attributes(attrib_set, start_offset, end_offset)
      __return_value = LibAtk.editable_text_set_run_attributes((to_unsafe as LibAtk::EditableText*), attrib_set, Int32.new(start_offset), Int32.new(end_offset))
      __return_value
    end

    def text_contents=(string)
      __return_value = LibAtk.editable_text_set_text_contents((to_unsafe as LibAtk::EditableText*), string)
      __return_value
    end

  end
end

