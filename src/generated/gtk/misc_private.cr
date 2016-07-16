module Gtk
  class MiscPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::MiscPrivate*))
    end

    @gtk_misc_private : LibGtk::MiscPrivate*?
    def initialize(@gtk_misc_private : LibGtk::MiscPrivate*)
    end

    def to_unsafe
      @gtk_misc_private.not_nil!.as(Void*)
    end

  end
end

