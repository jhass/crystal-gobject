module Gtk
  class TablePrivate
    include GObject::WrappedType

    def initialize(@gtk_table_private)
    end

    def to_unsafe
      @gtk_table_private.not_nil!
    end

  end
end

