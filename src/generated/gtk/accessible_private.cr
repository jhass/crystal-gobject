module Gtk
  class AccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::AccessiblePrivate*))
    end

    @gtk_accessible_private : LibGtk::AccessiblePrivate*?
    def initialize(@gtk_accessible_private : LibGtk::AccessiblePrivate*)
    end

    def to_unsafe
      @gtk_accessible_private.not_nil!.as(Void*)
    end

  end
end

