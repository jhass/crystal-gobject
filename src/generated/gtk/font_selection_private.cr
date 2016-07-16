module Gtk
  class FontSelectionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::FontSelectionPrivate*))
    end

    @gtk_font_selection_private : LibGtk::FontSelectionPrivate*?
    def initialize(@gtk_font_selection_private : LibGtk::FontSelectionPrivate*)
    end

    def to_unsafe
      @gtk_font_selection_private.not_nil!.as(Void*)
    end

  end
end

