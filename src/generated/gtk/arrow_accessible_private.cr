module Gtk
  class ArrowAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ArrowAccessiblePrivate*))
    end

    @gtk_arrow_accessible_private : LibGtk::ArrowAccessiblePrivate*?
    def initialize(@gtk_arrow_accessible_private : LibGtk::ArrowAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_arrow_accessible_private.not_nil!.as(Void*)
    end

  end
end

