module Gtk
  class SwitchAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::SwitchAccessiblePrivate*))
    end

    @gtk_switch_accessible_private : LibGtk::SwitchAccessiblePrivate*?
    def initialize(@gtk_switch_accessible_private : LibGtk::SwitchAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_switch_accessible_private.not_nil!
    end

  end
end

