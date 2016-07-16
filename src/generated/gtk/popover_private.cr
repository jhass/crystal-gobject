module Gtk
  class PopoverPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::PopoverPrivate*))
    end

    @gtk_popover_private : LibGtk::PopoverPrivate*?
    def initialize(@gtk_popover_private : LibGtk::PopoverPrivate*)
    end

    def to_unsafe
      @gtk_popover_private.not_nil!
    end

  end
end

