module Gtk
  class TextCellAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TextCellAccessiblePrivate*))
    end

    @gtk_text_cell_accessible_private : LibGtk::TextCellAccessiblePrivate*?
    def initialize(@gtk_text_cell_accessible_private : LibGtk::TextCellAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_text_cell_accessible_private.not_nil!.as(Void*)
    end

  end
end

