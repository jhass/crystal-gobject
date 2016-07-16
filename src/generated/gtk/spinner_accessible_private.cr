module Gtk
  class SpinnerAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::SpinnerAccessiblePrivate*))
    end

    @gtk_spinner_accessible_private : LibGtk::SpinnerAccessiblePrivate*?
    def initialize(@gtk_spinner_accessible_private : LibGtk::SpinnerAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_spinner_accessible_private.not_nil!
    end

  end
end

