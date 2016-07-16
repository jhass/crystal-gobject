module Gtk
  class EntryPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::EntryPrivate*))
    end

    @gtk_entry_private : LibGtk::EntryPrivate*?
    def initialize(@gtk_entry_private : LibGtk::EntryPrivate*)
    end

    def to_unsafe
      @gtk_entry_private.not_nil!
    end

  end
end

