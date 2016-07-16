module Gtk
  class StyleContextPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::StyleContextPrivate*))
    end

    @gtk_style_context_private : LibGtk::StyleContextPrivate*?
    def initialize(@gtk_style_context_private : LibGtk::StyleContextPrivate*)
    end

    def to_unsafe
      @gtk_style_context_private.not_nil!.as(Void*)
    end

  end
end

