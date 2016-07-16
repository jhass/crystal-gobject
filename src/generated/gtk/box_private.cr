module Gtk
  class BoxPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::BoxPrivate*))
    end

    @gtk_box_private : LibGtk::BoxPrivate*?
    def initialize(@gtk_box_private : LibGtk::BoxPrivate*)
    end

    def to_unsafe
      @gtk_box_private.not_nil!.as(Void*)
    end

  end
end

