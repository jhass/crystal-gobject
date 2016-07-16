module Gtk
  class EntryBufferPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::EntryBufferPrivate*))
    end

    @gtk_entry_buffer_private : LibGtk::EntryBufferPrivate*?
    def initialize(@gtk_entry_buffer_private : LibGtk::EntryBufferPrivate*)
    end

    def to_unsafe
      @gtk_entry_buffer_private.not_nil!
    end

  end
end

