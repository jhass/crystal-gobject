module Atk
  module Selection
    def add_selection(i)
      __return_value = LibAtk.selection_add_selection((to_unsafe as LibAtk::Selection*), Int32.cast(i))
      __return_value
    end

    def clear_selection
      __return_value = LibAtk.selection_clear_selection((to_unsafe as LibAtk::Selection*))
      __return_value
    end

    def selection_count
      __return_value = LibAtk.selection_get_selection_count((to_unsafe as LibAtk::Selection*))
      __return_value
    end

    def is_child_selected(i)
      __return_value = LibAtk.selection_is_child_selected((to_unsafe as LibAtk::Selection*), Int32.cast(i))
      __return_value
    end

    def ref_selection(i)
      __return_value = LibAtk.selection_ref_selection((to_unsafe as LibAtk::Selection*), Int32.cast(i))
      Atk::Object.new(__return_value) if __return_value
    end

    def remove_selection(i)
      __return_value = LibAtk.selection_remove_selection((to_unsafe as LibAtk::Selection*), Int32.cast(i))
      __return_value
    end

    def select_all_selection
      __return_value = LibAtk.selection_select_all_selection((to_unsafe as LibAtk::Selection*))
      __return_value
    end

  end
end

