module Gtk
  class RadioActionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::RadioActionPrivate*))
    end

    @gtk_radio_action_private : LibGtk::RadioActionPrivate*?
    def initialize(@gtk_radio_action_private : LibGtk::RadioActionPrivate*)
    end

    def to_unsafe
      @gtk_radio_action_private.not_nil!
    end

  end
end

