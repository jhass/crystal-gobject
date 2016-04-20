module Gtk
  class EntryBufferPrivate
    include GObject::WrappedType

    @gtk_entry_buffer_private : LibGtk::EntryBufferPrivate*?
    def initialize(@gtk_entry_buffer_private : LibGtk::EntryBufferPrivate*)
    end

    def to_unsafe
      @gtk_entry_buffer_private.not_nil!
    end

  end
end

