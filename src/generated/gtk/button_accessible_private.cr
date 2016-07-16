module Gtk
  class ButtonAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ButtonAccessiblePrivate*))
    end

    @gtk_button_accessible_private : LibGtk::ButtonAccessiblePrivate*?
    def initialize(@gtk_button_accessible_private : LibGtk::ButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_button_accessible_private.not_nil!
    end

  end
end

