module Atk
  module TableCell
    def column_header_cells
      __return_value = LibAtk.table_cell_get_column_header_cells(to_unsafe.as(LibAtk::TableCell*))
      __return_value
    end

    def column_span
      __return_value = LibAtk.table_cell_get_column_span(to_unsafe.as(LibAtk::TableCell*))
      __return_value
    end

    def position(row, column)
      __return_value = LibAtk.table_cell_get_position(to_unsafe.as(LibAtk::TableCell*), row, column)
      __return_value
    end

    def row_column_span(row, column, row_span, column_span)
      __return_value = LibAtk.table_cell_get_row_column_span(to_unsafe.as(LibAtk::TableCell*), row, column, row_span, column_span)
      __return_value
    end

    def row_header_cells
      __return_value = LibAtk.table_cell_get_row_header_cells(to_unsafe.as(LibAtk::TableCell*))
      __return_value
    end

    def row_span
      __return_value = LibAtk.table_cell_get_row_span(to_unsafe.as(LibAtk::TableCell*))
      __return_value
    end

    def table
      __return_value = LibAtk.table_cell_get_table(to_unsafe.as(LibAtk::TableCell*))
      Atk::Object.new(__return_value)
    end

  end
end

