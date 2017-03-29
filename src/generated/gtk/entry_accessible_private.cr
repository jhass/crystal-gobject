module Gtk
  class EntryAccessiblePrivate
    include GObject::WrappedType

    @gtk_entry_accessible_private : LibGtk::EntryAccessiblePrivate*?
    def initialize(@gtk_entry_accessible_private : LibGtk::EntryAccessiblePrivate*)
    end

    def to_unsafe
      @gtk_entry_accessible_private.not_nil!
    end

  end
end

