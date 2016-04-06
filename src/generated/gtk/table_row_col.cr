module Gtk
  class TableRowCol
    include GObject::WrappedType

    def initialize(@gtk_table_row_col)
    end

    def to_unsafe
      @gtk_table_row_col.not_nil!
    end

  end
end

