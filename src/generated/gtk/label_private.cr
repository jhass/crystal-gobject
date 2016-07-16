module Gtk
  class LabelPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::LabelPrivate*))
    end

    @gtk_label_private : LibGtk::LabelPrivate*?
    def initialize(@gtk_label_private : LibGtk::LabelPrivate*)
    end

    def to_unsafe
      @gtk_label_private.not_nil!
    end

  end
end

