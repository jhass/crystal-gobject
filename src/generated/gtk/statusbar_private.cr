module Gtk
  class StatusbarPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::StatusbarPrivate*))
    end

    @gtk_statusbar_private : LibGtk::StatusbarPrivate*?
    def initialize(@gtk_statusbar_private : LibGtk::StatusbarPrivate*)
    end

    def to_unsafe
      @gtk_statusbar_private.not_nil!.as(Void*)
    end

  end
end

