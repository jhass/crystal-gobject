module Gtk
  class AdjustmentPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::AdjustmentPrivate*))
    end

    @gtk_adjustment_private : LibGtk::AdjustmentPrivate*?
    def initialize(@gtk_adjustment_private : LibGtk::AdjustmentPrivate*)
    end

    def to_unsafe
      @gtk_adjustment_private.not_nil!.as(Void*)
    end

  end
end

