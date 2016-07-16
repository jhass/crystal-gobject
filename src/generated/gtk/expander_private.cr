module Gtk
  class ExpanderPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ExpanderPrivate*))
    end

    @gtk_expander_private : LibGtk::ExpanderPrivate*?
    def initialize(@gtk_expander_private : LibGtk::ExpanderPrivate*)
    end

    def to_unsafe
      @gtk_expander_private.not_nil!
    end

  end
end

