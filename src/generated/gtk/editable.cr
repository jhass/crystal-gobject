module Gtk
  module Editable
    def copy_clipboard
      __return_value = LibGtk.editable_copy_clipboard((to_unsafe as LibGtk::Editable*))
      __return_value
    end

    def cut_clipboard
      __return_value = LibGtk.editable_cut_clipboard((to_unsafe as LibGtk::Editable*))
      __return_value
    end

    def delete_selection
      __return_value = LibGtk.editable_delete_selection((to_unsafe as LibGtk::Editable*))
      __return_value
    end

    def delete_text(start_pos, end_pos)
      __return_value = LibGtk.editable_delete_text((to_unsafe as LibGtk::Editable*), Int32.new(start_pos), Int32.new(end_pos))
      __return_value
    end

    def chars(start_pos, end_pos)
      __return_value = LibGtk.editable_get_chars((to_unsafe as LibGtk::Editable*), Int32.new(start_pos), Int32.new(end_pos))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def editable
      __return_value = LibGtk.editable_get_editable((to_unsafe as LibGtk::Editable*))
      __return_value
    end

    def position
      __return_value = LibGtk.editable_get_position((to_unsafe as LibGtk::Editable*))
      __return_value
    end

    def selection_bounds(start_pos, end_pos)
      __return_value = LibGtk.editable_get_selection_bounds((to_unsafe as LibGtk::Editable*), Int32.new(start_pos), Int32.new(end_pos))
      __return_value
    end

    def insert_text(new_text, new_text_length, position)
      __return_value = LibGtk.editable_insert_text((to_unsafe as LibGtk::Editable*), new_text, Int32.new(new_text_length), Int32.new(position))
      __return_value
    end

    def paste_clipboard
      __return_value = LibGtk.editable_paste_clipboard((to_unsafe as LibGtk::Editable*))
      __return_value
    end

    def select_region(start_pos, end_pos)
      __return_value = LibGtk.editable_select_region((to_unsafe as LibGtk::Editable*), Int32.new(start_pos), Int32.new(end_pos))
      __return_value
    end

    def editable=(is_editable)
      __return_value = LibGtk.editable_set_editable((to_unsafe as LibGtk::Editable*), Bool.new(is_editable))
      __return_value
    end

    def position=(position)
      __return_value = LibGtk.editable_set_position((to_unsafe as LibGtk::Editable*), Int32.new(position))
      __return_value
    end

  end
end

