module Gtk
  class LinkButtonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::LinkButtonPrivate*))
    end

    @gtk_link_button_private : LibGtk::LinkButtonPrivate*?
    def initialize(@gtk_link_button_private : LibGtk::LinkButtonPrivate*)
    end

    def to_unsafe
      @gtk_link_button_private.not_nil!.as(Void*)
    end

  end
end

