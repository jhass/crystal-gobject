module Gtk
  class HeaderBarPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::HeaderBarPrivate*))
    end

    @gtk_header_bar_private : LibGtk::HeaderBarPrivate*?
    def initialize(@gtk_header_bar_private : LibGtk::HeaderBarPrivate*)
    end

    def to_unsafe
      @gtk_header_bar_private.not_nil!
    end

  end
end

