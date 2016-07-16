module Gtk
  class TablePrivate
    include GObject::WrappedType

    @gtk_table_private : LibGtk::TablePrivate*?
    def initialize(@gtk_table_private : LibGtk::TablePrivate*)
    end

    def to_unsafe
      @gtk_table_private.not_nil!.as(Void*)
    end

  end
end

