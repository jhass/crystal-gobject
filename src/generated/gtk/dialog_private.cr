module Gtk
  class DialogPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::DialogPrivate*))
    end

    @gtk_dialog_private : LibGtk::DialogPrivate*?
    def initialize(@gtk_dialog_private : LibGtk::DialogPrivate*)
    end

    def to_unsafe
      @gtk_dialog_private.not_nil!.as(Void*)
    end

  end
end

