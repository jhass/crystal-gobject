module Atk
  module EditableText
    def copy_text(start_pos, end_pos)
      LibAtk.editable_text_copy_text(@pointer.as(LibAtk::EditableText*), Int32.new(start_pos), Int32.new(end_pos))
      nil
    end

    def cut_text(start_pos, end_pos)
      LibAtk.editable_text_cut_text(@pointer.as(LibAtk::EditableText*), Int32.new(start_pos), Int32.new(end_pos))
      nil
    end

    def delete_text(start_pos, end_pos)
      LibAtk.editable_text_delete_text(@pointer.as(LibAtk::EditableText*), Int32.new(start_pos), Int32.new(end_pos))
      nil
    end

    def insert_text(string, length, position)
      LibAtk.editable_text_insert_text(@pointer.as(LibAtk::EditableText*), string.to_unsafe, Int32.new(length), position)
      nil
    end

    def paste_text(position)
      LibAtk.editable_text_paste_text(@pointer.as(LibAtk::EditableText*), Int32.new(position))
      nil
    end

    def set_run_attributes(attrib_set, start_offset, end_offset)
      __return_value = LibAtk.editable_text_set_run_attributes(@pointer.as(LibAtk::EditableText*), attrib_set, Int32.new(start_offset), Int32.new(end_offset))
      __return_value
    end

    def text_contents=(string)
      LibAtk.editable_text_set_text_contents(@pointer.as(LibAtk::EditableText*), string.to_unsafe)
      nil
    end

  end
end

