module Gtk
  class TableRowCol
    include GObject::WrappedType

    @gtk_table_row_col : LibGtk::TableRowCol*?
    def initialize(@gtk_table_row_col : LibGtk::TableRowCol*)
    end

    def to_unsafe
      @gtk_table_row_col.not_nil!
    end

  end
end

