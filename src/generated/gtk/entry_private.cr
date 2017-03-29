module Gtk
  class EntryPrivate
    include GObject::WrappedType

    @gtk_entry_private : LibGtk::EntryPrivate*?
    def initialize(@gtk_entry_private : LibGtk::EntryPrivate*)
    end

    def to_unsafe
      @gtk_entry_private.not_nil!
    end

  end
end

