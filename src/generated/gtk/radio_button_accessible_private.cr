module Gtk
  class RadioButtonAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::RadioButtonAccessiblePrivate*))
    end

    @gtk_radio_button_accessible_private : LibGtk::RadioButtonAccessiblePrivate*?
    def initialize(@gtk_radio_button_accessible_private : LibGtk::RadioButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_radio_button_accessible_private.not_nil!
    end

  end
end

