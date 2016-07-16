module Gtk
  class LabelAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::LabelAccessiblePrivate*))
    end

    @gtk_label_accessible_private : LibGtk::LabelAccessiblePrivate*?
    def initialize(@gtk_label_accessible_private : LibGtk::LabelAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_label_accessible_private.not_nil!
    end

  end
end

