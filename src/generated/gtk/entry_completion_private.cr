module Gtk
  class EntryCompletionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::EntryCompletionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::EntryCompletionPrivate*)
    end

  end
end

