module Gtk
  class ApplicationPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ApplicationPrivate*))
    end

    @gtk_application_private : LibGtk::ApplicationPrivate*?
    def initialize(@gtk_application_private : LibGtk::ApplicationPrivate*)
    end

    def to_unsafe
      @gtk_application_private.not_nil!
    end

  end
end

