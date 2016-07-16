module Gtk
  class FixedPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::FixedPrivate*))
    end

    @gtk_fixed_private : LibGtk::FixedPrivate*?
    def initialize(@gtk_fixed_private : LibGtk::FixedPrivate*)
    end

    def to_unsafe
      @gtk_fixed_private.not_nil!
    end

  end
end

