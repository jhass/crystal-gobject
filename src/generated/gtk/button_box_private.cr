module Gtk
  class ButtonBoxPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ButtonBoxPrivate*))
    end

    @gtk_button_box_private : LibGtk::ButtonBoxPrivate*?
    def initialize(@gtk_button_box_private : LibGtk::ButtonBoxPrivate*)
    end

    def to_unsafe
      @gtk_button_box_private.not_nil!
    end

  end
end

