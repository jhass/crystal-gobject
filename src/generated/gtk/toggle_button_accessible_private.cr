module Gtk
  class ToggleButtonAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ToggleButtonAccessiblePrivate*))
    end

    @gtk_toggle_button_accessible_private : LibGtk::ToggleButtonAccessiblePrivate*?
    def initialize(@gtk_toggle_button_accessible_private : LibGtk::ToggleButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_toggle_button_accessible_private.not_nil!
    end

  end
end

