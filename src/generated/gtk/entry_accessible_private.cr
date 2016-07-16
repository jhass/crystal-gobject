module Gtk
  class EntryAccessiblePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::EntryAccessiblePrivate*))
    end

    @gtk_entry_accessible_private : LibGtk::EntryAccessiblePrivate*?
    def initialize(@gtk_entry_accessible_private : LibGtk::EntryAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_entry_accessible_private.not_nil!.as(Void*)
    end

  end
end

