module Gtk
  class TableChild
    include GObject::WrappedType

    @gtk_table_child : LibGtk::TableChild*?
    def initialize(@gtk_table_child : LibGtk::TableChild*)
    end

    def to_unsafe
      @gtk_table_child.not_nil!
    end

  end
end

