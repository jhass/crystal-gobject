module Gtk
  class LayoutPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::LayoutPrivate*))
    end

    @gtk_layout_private : LibGtk::LayoutPrivate*?
    def initialize(@gtk_layout_private : LibGtk::LayoutPrivate*)
    end

    def to_unsafe
      @gtk_layout_private.not_nil!.as(Void*)
    end

  end
end

