module Gtk
  class ColorSelectionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ColorSelectionPrivate*))
    end

    @gtk_color_selection_private : LibGtk::ColorSelectionPrivate*?
    def initialize(@gtk_color_selection_private : LibGtk::ColorSelectionPrivate*)
    end

    def to_unsafe
      @gtk_color_selection_private.not_nil!.as(Void*)
    end

  end
end

