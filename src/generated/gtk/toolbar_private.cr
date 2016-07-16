module Gtk
  class ToolbarPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ToolbarPrivate*))
    end

    @gtk_toolbar_private : LibGtk::ToolbarPrivate*?
    def initialize(@gtk_toolbar_private : LibGtk::ToolbarPrivate*)
    end

    def to_unsafe
      @gtk_toolbar_private.not_nil!
    end

  end
end

