module Gtk
  class WindowAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::WindowAccessiblePrivate*))
    end

    @gtk_window_accessible_private : LibGtk::WindowAccessiblePrivate*?
    def initialize(@gtk_window_accessible_private : LibGtk::WindowAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_window_accessible_private.not_nil!
    end

  end
end

