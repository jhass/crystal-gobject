module Gtk
  class EntryBufferPrivate
    include GObject::WrappedType

    def initialize(@gtk_entry_buffer_private)
    end

    def to_unsafe
      @gtk_entry_buffer_private.not_nil!
    end

  end
end

