module Gtk
  class ArrowPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ArrowPrivate*))
    end

    @gtk_arrow_private : LibGtk::ArrowPrivate*?
    def initialize(@gtk_arrow_private : LibGtk::ArrowPrivate*)
    end

    def to_unsafe
      @gtk_arrow_private.not_nil!
    end

  end
end

