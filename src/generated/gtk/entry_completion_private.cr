module Gtk
  class EntryCompletionPrivate
    include GObject::WrappedType

    def initialize(@gtk_entry_completion_private)
    end

    def to_unsafe
      @gtk_entry_completion_private.not_nil!
    end

  end
end

