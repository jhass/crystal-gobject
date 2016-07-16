module Gtk
  class TextViewPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TextViewPrivate*))
    end

    @gtk_text_view_private : LibGtk::TextViewPrivate*?
    def initialize(@gtk_text_view_private : LibGtk::TextViewPrivate*)
    end

    def to_unsafe
      @gtk_text_view_private.not_nil!
    end

  end
end

