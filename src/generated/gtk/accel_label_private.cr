module Gtk
  class AccelLabelPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::AccelLabelPrivate*))
    end

    @gtk_accel_label_private : LibGtk::AccelLabelPrivate*?
    def initialize(@gtk_accel_label_private : LibGtk::AccelLabelPrivate*)
    end

    def to_unsafe
      @gtk_accel_label_private.not_nil!.as(Void*)
    end

  end
end

