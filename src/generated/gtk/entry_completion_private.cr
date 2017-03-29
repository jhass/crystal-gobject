module Gtk
  class EntryCompletionPrivate
    include GObject::WrappedType

    @gtk_entry_completion_private : LibGtk::EntryCompletionPrivate*?
    def initialize(@gtk_entry_completion_private : LibGtk::EntryCompletionPrivate*)
    end

    def to_unsafe
      @gtk_entry_completion_private.not_nil!
    end

  end
end

