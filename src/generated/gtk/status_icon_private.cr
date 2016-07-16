module Gtk
  class StatusIconPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::StatusIconPrivate*))
    end

    @gtk_status_icon_private : LibGtk::StatusIconPrivate*?
    def initialize(@gtk_status_icon_private : LibGtk::StatusIconPrivate*)
    end

    def to_unsafe
      @gtk_status_icon_private.not_nil!.as(Void*)
    end

  end
end

