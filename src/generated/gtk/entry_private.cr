module Gtk
  class EntryPrivate
    include GObject::WrappedType

    def initialize(@gtk_entry_private)
    end

    def to_unsafe
      @gtk_entry_private.not_nil!
    end

  end
end

