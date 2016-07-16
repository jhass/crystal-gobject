module Gtk
  class ExpanderAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ExpanderAccessiblePrivate*))
    end

    @gtk_expander_accessible_private : LibGtk::ExpanderAccessiblePrivate*?
    def initialize(@gtk_expander_accessible_private : LibGtk::ExpanderAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_expander_accessible_private.not_nil!.as(Void*)
    end

  end
end

