module Gtk
  class SwitchPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::SwitchPrivate*))
    end

    @gtk_switch_private : LibGtk::SwitchPrivate*?
    def initialize(@gtk_switch_private : LibGtk::SwitchPrivate*)
    end

    def to_unsafe
      @gtk_switch_private.not_nil!
    end

  end
end

