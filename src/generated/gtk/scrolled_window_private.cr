module Gtk
  class ScrolledWindowPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ScrolledWindowPrivate*))
    end

    @gtk_scrolled_window_private : LibGtk::ScrolledWindowPrivate*?
    def initialize(@gtk_scrolled_window_private : LibGtk::ScrolledWindowPrivate*)
    end

    def to_unsafe
      @gtk_scrolled_window_private.not_nil!
    end

  end
end

