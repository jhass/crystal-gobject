module Gtk
  class FontButtonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::FontButtonPrivate*))
    end

    @gtk_font_button_private : LibGtk::FontButtonPrivate*?
    def initialize(@gtk_font_button_private : LibGtk::FontButtonPrivate*)
    end

    def to_unsafe
      @gtk_font_button_private.not_nil!.as(Void*)
    end

  end
end

