module Gtk
  class WindowPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::WindowPrivate*))
    end

    @gtk_window_private : LibGtk::WindowPrivate*?
    def initialize(@gtk_window_private : LibGtk::WindowPrivate*)
    end

    def to_unsafe
      @gtk_window_private.not_nil!.as(Void*)
    end

  end
end

