module Gtk
  class ScaleButtonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ScaleButtonPrivate*))
    end

    @gtk_scale_button_private : LibGtk::ScaleButtonPrivate*?
    def initialize(@gtk_scale_button_private : LibGtk::ScaleButtonPrivate*)
    end

    def to_unsafe
      @gtk_scale_button_private.not_nil!.as(Void*)
    end

  end
end

