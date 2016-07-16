module Gtk
  class ScrolledWindowAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ScrolledWindowAccessiblePrivate*))
    end

    @gtk_scrolled_window_accessible_private : LibGtk::ScrolledWindowAccessiblePrivate*?
    def initialize(@gtk_scrolled_window_accessible_private : LibGtk::ScrolledWindowAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_scrolled_window_accessible_private.not_nil!
    end

  end
end

