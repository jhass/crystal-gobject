module Gtk
  class TextViewAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::TextViewAccessiblePrivate*))
    end

    @gtk_text_view_accessible_private : LibGtk::TextViewAccessiblePrivate*?
    def initialize(@gtk_text_view_accessible_private : LibGtk::TextViewAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_text_view_accessible_private.not_nil!.as(Void*)
    end

  end
end

