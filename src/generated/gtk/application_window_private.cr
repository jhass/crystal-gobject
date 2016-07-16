module Gtk
  class ApplicationWindowPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ApplicationWindowPrivate*))
    end

    @gtk_application_window_private : LibGtk::ApplicationWindowPrivate*?
    def initialize(@gtk_application_window_private : LibGtk::ApplicationWindowPrivate*)
    end

    def to_unsafe
      @gtk_application_window_private.not_nil!.as(Void*)
    end

  end
end

