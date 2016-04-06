module Gtk
  class TableChild
    include GObject::WrappedType

    def initialize(@gtk_table_child)
    end

    def to_unsafe
      @gtk_table_child.not_nil!
    end

  end
end

