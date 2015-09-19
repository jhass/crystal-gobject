module Atk
  module Table
    def add_column_selection(column)
      __return_value = LibAtk.table_add_column_selection((to_unsafe as LibAtk::Table*), Int32.new(column))
      __return_value
    end

    def add_row_selection(row)
      __return_value = LibAtk.table_add_row_selection((to_unsafe as LibAtk::Table*), Int32.new(row))
      __return_value
    end

    def caption
      __return_value = LibAtk.table_get_caption((to_unsafe as LibAtk::Table*))
      Atk::Object.new(__return_value) if __return_value
    end

    def column_at_index(index)
      __return_value = LibAtk.table_get_column_at_index((to_unsafe as LibAtk::Table*), Int32.new(index))
      __return_value
    end

    def column_description(column)
      __return_value = LibAtk.table_get_column_description((to_unsafe as LibAtk::Table*), Int32.new(column))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def column_extent_at(row, column)
      __return_value = LibAtk.table_get_column_extent_at((to_unsafe as LibAtk::Table*), Int32.new(row), Int32.new(column))
      __return_value
    end

    def column_header(column)
      __return_value = LibAtk.table_get_column_header((to_unsafe as LibAtk::Table*), Int32.new(column))
      Atk::Object.new(__return_value) if __return_value
    end

    def index_at(row, column)
      __return_value = LibAtk.table_get_index_at((to_unsafe as LibAtk::Table*), Int32.new(row), Int32.new(column))
      __return_value
    end

    def n_columns
      __return_value = LibAtk.table_get_n_columns((to_unsafe as LibAtk::Table*))
      __return_value
    end

    def n_rows
      __return_value = LibAtk.table_get_n_rows((to_unsafe as LibAtk::Table*))
      __return_value
    end

    def row_at_index(index)
      __return_value = LibAtk.table_get_row_at_index((to_unsafe as LibAtk::Table*), Int32.new(index))
      __return_value
    end

    def row_description(row)
      __return_value = LibAtk.table_get_row_description((to_unsafe as LibAtk::Table*), Int32.new(row))
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

    def row_extent_at(row, column)
      __return_value = LibAtk.table_get_row_extent_at((to_unsafe as LibAtk::Table*), Int32.new(row), Int32.new(column))
      __return_value
    end

    def row_header(row)
      __return_value = LibAtk.table_get_row_header((to_unsafe as LibAtk::Table*), Int32.new(row))
      Atk::Object.new(__return_value) if __return_value
    end

    def selected_columns(selected)
      __return_value = LibAtk.table_get_selected_columns((to_unsafe as LibAtk::Table*), selected)
      __return_value
    end

    def selected_rows(selected)
      __return_value = LibAtk.table_get_selected_rows((to_unsafe as LibAtk::Table*), selected)
      __return_value
    end

    def summary
      __return_value = LibAtk.table_get_summary((to_unsafe as LibAtk::Table*))
      Atk::Object.new(__return_value)
    end

    def is_column_selected(column)
      __return_value = LibAtk.table_is_column_selected((to_unsafe as LibAtk::Table*), Int32.new(column))
      __return_value
    end

    def is_row_selected(row)
      __return_value = LibAtk.table_is_row_selected((to_unsafe as LibAtk::Table*), Int32.new(row))
      __return_value
    end

    def is_selected(row, column)
      __return_value = LibAtk.table_is_selected((to_unsafe as LibAtk::Table*), Int32.new(row), Int32.new(column))
      __return_value
    end

    def ref_at(row, column)
      __return_value = LibAtk.table_ref_at((to_unsafe as LibAtk::Table*), Int32.new(row), Int32.new(column))
      Atk::Object.new(__return_value)
    end

    def remove_column_selection(column)
      __return_value = LibAtk.table_remove_column_selection((to_unsafe as LibAtk::Table*), Int32.new(column))
      __return_value
    end

    def remove_row_selection(row)
      __return_value = LibAtk.table_remove_row_selection((to_unsafe as LibAtk::Table*), Int32.new(row))
      __return_value
    end

    def caption=(caption)
      __return_value = LibAtk.table_set_caption((to_unsafe as LibAtk::Table*), (caption.to_unsafe as LibAtk::Object*))
      __return_value
    end

    def set_column_description(column, description)
      __return_value = LibAtk.table_set_column_description((to_unsafe as LibAtk::Table*), Int32.new(column), description)
      __return_value
    end

    def set_column_header(column, header)
      __return_value = LibAtk.table_set_column_header((to_unsafe as LibAtk::Table*), Int32.new(column), (header.to_unsafe as LibAtk::Object*))
      __return_value
    end

    def set_row_description(row, description)
      __return_value = LibAtk.table_set_row_description((to_unsafe as LibAtk::Table*), Int32.new(row), description)
      __return_value
    end

    def set_row_header(row, header)
      __return_value = LibAtk.table_set_row_header((to_unsafe as LibAtk::Table*), Int32.new(row), (header.to_unsafe as LibAtk::Object*))
      __return_value
    end

    def summary=(accessible)
      __return_value = LibAtk.table_set_summary((to_unsafe as LibAtk::Table*), (accessible.to_unsafe as LibAtk::Object*))
      __return_value
    end

  end
end

