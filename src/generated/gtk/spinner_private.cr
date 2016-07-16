module Gtk
  class SpinnerPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::SpinnerPrivate*))
    end

    @gtk_spinner_private : LibGtk::SpinnerPrivate*?
    def initialize(@gtk_spinner_private : LibGtk::SpinnerPrivate*)
    end

    def to_unsafe
      @gtk_spinner_private.not_nil!.as(Void*)
    end

  end
end

