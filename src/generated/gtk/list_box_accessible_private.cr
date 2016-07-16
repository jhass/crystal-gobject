module Gtk
  class ListBoxAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::ListBoxAccessiblePrivate*))
    end

    @gtk_list_box_accessible_private : LibGtk::ListBoxAccessiblePrivate*?
    def initialize(@gtk_list_box_accessible_private : LibGtk::ListBoxAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_list_box_accessible_private.not_nil!.as(Void*)
    end

  end
end

