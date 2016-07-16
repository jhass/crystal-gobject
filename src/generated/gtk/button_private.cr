module Gtk
  class ButtonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ButtonPrivate*))
    end

    @gtk_button_private : LibGtk::ButtonPrivate*?
    def initialize(@gtk_button_private : LibGtk::ButtonPrivate*)
    end

    def to_unsafe
      @gtk_button_private.not_nil!.as(Void*)
    end

  end
end

