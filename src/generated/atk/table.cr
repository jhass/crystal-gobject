module Atk
  module Table
    def add_column_selection(column)
      __return_value = LibAtk.table_add_column_selection(to_unsafe.as(LibAtk::Table*), Int32.new(column))
      __return_value
    end

    def add_row_selection(row)
      __return_value = LibAtk.table_add_row_selection(to_unsafe.as(LibAtk::Table*), Int32.new(row))
      __return_value
    end

    def caption
      __return_value = LibAtk.table_get_caption(to_unsafe.as(LibAtk::Table*))
      Atk::Object.new(__return_value) if __return_value
    end

    def column_at_index(index)
      __return_value = LibAtk.table_get_column_at_index(to_unsafe.as(LibAtk::Table*), Int32.new(index))
      __return_value
    end

    def column_description(column)
      __return_value = LibAtk.table_get_column_description(to_unsafe.as(LibAtk::Table*), Int32.new(column))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def column_extent_at(row, column)
      __return_value = LibAtk.table_get_column_extent_at(to_unsafe.as(LibAtk::Table*), Int32.new(row), Int32.new(column))
      __return_value
    end

    def column_header(column)
      __return_value = LibAtk.table_get_column_header(to_unsafe.as(LibAtk::Table*), Int32.new(column))
      Atk::Object.new(__return_value) if __return_value
    end

    def index_at(row, column)
      __return_value = LibAtk.table_get_index_at(to_unsafe.as(LibAtk::Table*), Int32.new(row), Int32.new(column))
      __return_value
    end

    def n_columns
      __return_value = LibAtk.table_get_n_columns(to_unsafe.as(LibAtk::Table*))
      __return_value
    end

    def n_rows
      __return_value = LibAtk.table_get_n_rows(to_unsafe.as(LibAtk::Table*))
      __return_value
    end

    def row_at_index(index)
      __return_value = LibAtk.table_get_row_at_index(to_unsafe.as(LibAtk::Table*), Int32.new(index))
      __return_value
    end

    def row_description(row)
      __return_value = LibAtk.table_get_row_description(to_unsafe.as(LibAtk::Table*), Int32.new(row))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def row_extent_at(row, column)
      __return_value = LibAtk.table_get_row_extent_at(to_unsafe.as(LibAtk::Table*), Int32.new(row), Int32.new(column))
      __return_value
    end

    def row_header(row)
      __return_value = LibAtk.table_get_row_header(to_unsafe.as(LibAtk::Table*), Int32.new(row))
      Atk::Object.new(__return_value) if __return_value
    end

    def selected_columns(selected)
      __return_value = LibAtk.table_get_selected_columns(to_unsafe.as(LibAtk::Table*), selected)
      __return_value
    end

    def selected_rows(selected)
      __return_value = LibAtk.table_get_selected_rows(to_unsafe.as(LibAtk::Table*), selected)
      __return_value
    end

    def summary
      __return_value = LibAtk.table_get_summary(to_unsafe.as(LibAtk::Table*))
      Atk::Object.new(__return_value)
    end

    def column_selected?(column)
      __return_value = LibAtk.table_is_column_selected(to_unsafe.as(LibAtk::Table*), Int32.new(column))
      __return_value
    end

    def row_selected?(row)
      __return_value = LibAtk.table_is_row_selected(to_unsafe.as(LibAtk::Table*), Int32.new(row))
      __return_value
    end

    def selected?(row, column)
      __return_value = LibAtk.table_is_selected(to_unsafe.as(LibAtk::Table*), Int32.new(row), Int32.new(column))
      __return_value
    end

    def ref_at(row, column)
      __return_value = LibAtk.table_ref_at(to_unsafe.as(LibAtk::Table*), Int32.new(row), Int32.new(column))
      Atk::Object.new(__return_value)
    end

    def remove_column_selection(column)
      __return_value = LibAtk.table_remove_column_selection(to_unsafe.as(LibAtk::Table*), Int32.new(column))
      __return_value
    end

    def remove_row_selection(row)
      __return_value = LibAtk.table_remove_row_selection(to_unsafe.as(LibAtk::Table*), Int32.new(row))
      __return_value
    end

    def caption=(caption)
      LibAtk.table_set_caption(to_unsafe.as(LibAtk::Table*), caption.to_unsafe.as(LibAtk::Object*))
      nil
    end

    def set_column_description(column, description)
      LibAtk.table_set_column_description(to_unsafe.as(LibAtk::Table*), Int32.new(column), description.to_unsafe)
      nil
    end

    def set_column_header(column, header)
      LibAtk.table_set_column_header(to_unsafe.as(LibAtk::Table*), Int32.new(column), header.to_unsafe.as(LibAtk::Object*))
      nil
    end

    def set_row_description(row, description)
      LibAtk.table_set_row_description(to_unsafe.as(LibAtk::Table*), Int32.new(row), description.to_unsafe)
      nil
    end

    def set_row_header(row, header)
      LibAtk.table_set_row_header(to_unsafe.as(LibAtk::Table*), Int32.new(row), header.to_unsafe.as(LibAtk::Object*))
      nil
    end

    def summary=(accessible)
      LibAtk.table_set_summary(to_unsafe.as(LibAtk::Table*), accessible.to_unsafe.as(LibAtk::Object*))
      nil
    end

    alias ColumnDeletedSignal = Table, Int32, Int32 ->
    def on_column_deleted(&__block : ColumnDeletedSignal)
      __callback = ->(_arg0 : LibAtk::Table*, _arg1 : LibAtk::Int32*, _arg2 : LibAtk::Int32*) {
       __return_value = __block.call(Table.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("column-deleted", __callback)
    end

    alias ColumnInsertedSignal = Table, Int32, Int32 ->
    def on_column_inserted(&__block : ColumnInsertedSignal)
      __callback = ->(_arg0 : LibAtk::Table*, _arg1 : LibAtk::Int32*, _arg2 : LibAtk::Int32*) {
       __return_value = __block.call(Table.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("column-inserted", __callback)
    end

    alias ColumnReorderedSignal = Table ->
    def on_column_reordered(&__block : ColumnReorderedSignal)
      __callback = ->(_arg0 : LibAtk::Table*) {
       __return_value = __block.call(Table.new(_arg0))
       __return_value
      }
      connect("column-reordered", __callback)
    end

    alias ModelChangedSignal = Table ->
    def on_model_changed(&__block : ModelChangedSignal)
      __callback = ->(_arg0 : LibAtk::Table*) {
       __return_value = __block.call(Table.new(_arg0))
       __return_value
      }
      connect("model-changed", __callback)
    end

    alias RowDeletedSignal = Table, Int32, Int32 ->
    def on_row_deleted(&__block : RowDeletedSignal)
      __callback = ->(_arg0 : LibAtk::Table*, _arg1 : LibAtk::Int32*, _arg2 : LibAtk::Int32*) {
       __return_value = __block.call(Table.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("row-deleted", __callback)
    end

    alias RowInsertedSignal = Table, Int32, Int32 ->
    def on_row_inserted(&__block : RowInsertedSignal)
      __callback = ->(_arg0 : LibAtk::Table*, _arg1 : LibAtk::Int32*, _arg2 : LibAtk::Int32*) {
       __return_value = __block.call(Table.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("row-inserted", __callback)
    end

    alias RowReorderedSignal = Table ->
    def on_row_reordered(&__block : RowReorderedSignal)
      __callback = ->(_arg0 : LibAtk::Table*) {
       __return_value = __block.call(Table.new(_arg0))
       __return_value
      }
      connect("row-reordered", __callback)
    end

  end
end

