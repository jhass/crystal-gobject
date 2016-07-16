module Gtk
  class TablePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TablePrivate*))
    end

    @gtk_table_private : LibGtk::TablePrivate*?
    def initialize(@gtk_table_private : LibGtk::TablePrivate*)
    end

    def to_unsafe
      @gtk_table_private.not_nil!.as(Void*)
    end

  end
end

