module Gtk
  class InvisiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::InvisiblePrivate*))
    end

    @gtk_invisible_private : LibGtk::InvisiblePrivate*?
    def initialize(@gtk_invisible_private : LibGtk::InvisiblePrivate*)
    end

    def to_unsafe
      @gtk_invisible_private.not_nil!
    end

  end
end

