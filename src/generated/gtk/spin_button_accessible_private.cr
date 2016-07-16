module Gtk
  class SpinButtonAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::SpinButtonAccessiblePrivate*))
    end

    @gtk_spin_button_accessible_private : LibGtk::SpinButtonAccessiblePrivate*?
    def initialize(@gtk_spin_button_accessible_private : LibGtk::SpinButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_spin_button_accessible_private.not_nil!
    end

  end
end

