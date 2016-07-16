module Gtk
  class NumerableIconPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::NumerableIconPrivate*))
    end

    @gtk_numerable_icon_private : LibGtk::NumerableIconPrivate*?
    def initialize(@gtk_numerable_icon_private : LibGtk::NumerableIconPrivate*)
    end

    def to_unsafe
      @gtk_numerable_icon_private.not_nil!
    end

  end
end

