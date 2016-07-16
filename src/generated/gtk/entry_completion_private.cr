module Gtk
  class EntryCompletionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::EntryCompletionPrivate*))
    end

    @gtk_entry_completion_private : LibGtk::EntryCompletionPrivate*?
    def initialize(@gtk_entry_completion_private : LibGtk::EntryCompletionPrivate*)
    end

    def to_unsafe
      @gtk_entry_completion_private.not_nil!.as(Void*)
    end

  end
end

