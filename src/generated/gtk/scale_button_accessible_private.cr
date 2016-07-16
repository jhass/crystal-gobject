module Gtk
  class ScaleButtonAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ScaleButtonAccessiblePrivate*))
    end

    @gtk_scale_button_accessible_private : LibGtk::ScaleButtonAccessiblePrivate*?
    def initialize(@gtk_scale_button_accessible_private : LibGtk::ScaleButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_scale_button_accessible_private.not_nil!
    end

  end
end

