module Gtk
  class LinkButtonAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::LinkButtonAccessiblePrivate*))
    end

    @gtk_link_button_accessible_private : LibGtk::LinkButtonAccessiblePrivate*?
    def initialize(@gtk_link_button_accessible_private : LibGtk::LinkButtonAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_link_button_accessible_private.not_nil!
    end

  end
end

