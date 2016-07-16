module Gtk
  class RadioButtonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::RadioButtonPrivate*))
    end

    @gtk_radio_button_private : LibGtk::RadioButtonPrivate*?
    def initialize(@gtk_radio_button_private : LibGtk::RadioButtonPrivate*)
    end

    def to_unsafe
      @gtk_radio_button_private.not_nil!.as(Void*)
    end

  end
end

